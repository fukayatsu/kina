Rails.application.routes.draw do
  namespace :api do
    constraints format: :json do
      resources :users, only: [], param: :name do
        resources :stays, only: [:create]
        delete 'stays' => 'stays#delete_all'
      end
      resources :spots, only: [], param: :uuid do
        resources :users, only: [:index]
      end
    end
  end
end
