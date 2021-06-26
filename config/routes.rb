Rails.application.routes.draw do
  root to: "dashboard#index"

  namespace :webauthn do
    resources :credentials, only: %i[index create destroy] do
      collection do
        resource :challenge, only: %i[create], module: :credentials, as: :credentials_challenge
      end
    end

    resources :authentications, only: %i[index create], path: :auth do
      collection do
        resource :challenge, only: %i[create], module: :authentications, as: :authentications_challenge
      end
    end
  end

  devise_for :users, controllers: {sessions: "users/sessions"}
end
