Rails.application.routes.draw do
  root to: "dashboard#index"

  namespace :webauthn do
    resources :credentials, only: %i[index create destroy] do
      collection do
        resource :challenge, only: %i[create], module: :credentials, as: :credentials_challenge
      end
    end
  end

  devise_for :users, controllers: {sessions: "users/sessions"}
end
