class Webauthn::Authentications::ChallengesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    user = User.find_by(id: session[:webauthn_authentication]["user_id"])

    if user
      # prepare WebAuthn options
      get_options = WebAuthn::Credential.options_for_get(allow: user.webauthn_credentials.pluck(:external_id))

      # save the challenge
      session[:webauthn_authentication]["challenge"] = get_options.challenge

      respond_to do |format|
        format.json { render json: get_options }
      end
    else
      respond_to do |format|
        format.json { render json: {message: "Authentication failed"}, status: :unprocessable_entity }
      end
    end
  end
end
