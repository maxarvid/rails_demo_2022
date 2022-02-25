Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :pings, only: [:index]
    resources :articles, only: [:index, :show, :create]
    # get :articles, controller: :articles, action: :index
    # get :articles, controller: :articles, action: :show
  end
end
