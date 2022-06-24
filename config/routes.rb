Rails.application.routes.draw do
  get 'queue_job/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :api, defaults: { format: :json } do
    resources :movies, only: [:index, :create]
    resources :queue_job, only: [:index]
  end
end
