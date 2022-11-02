Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :v1 do
    namespace :me do
      resources :reservations
    end
    resources :users
    resources :cars do
      resources :reservations
    end
    post '/auth/login', to: 'authentication#login'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
