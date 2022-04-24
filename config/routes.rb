Rails.application.routes.draw do
  namespace :api do
    get 'greetings/index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, default: {format: :json} do
    resources :greetings, only: [:index] do
    end
  end
  # Defines the root path route ("/")
  root to: "api/greetings#index"
end
