class Users::SessionsController < Devise::SessionsController
  def new
    session.delete(:webauthn_authentication)
    super
  end

  def create
    self.resource = warden.authenticate!(auth_options)

    if resource.webauthn_credentials.any?
      # preserve stored location
      stored_location = stored_location_for(resource)

      # log out the user (this will also clear stored location)
      warden.logout

      # restore the stored location
      store_location_for(resource, stored_location)

      # set session data
      session[:webauthn_authentication] = {user_id: resource.id, remember_me: params[:user][:remember_me] == "1"}

      # redirect to webauthn page
      redirect_to webauthn_authentications_url, notice: "Use your authenticator to continue."
    else
      # continue without webauthn
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    end
  end
end
