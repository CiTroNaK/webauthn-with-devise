Rails.application.routes.draw do
  root to: "dashboard#index"

  devise_for :users
end
