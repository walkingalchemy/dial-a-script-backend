Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update]
      resources :users do
        resources :calls, only: [:index, :show, :create]
      end
      resources :scripts, only: [:index, :show, :create, :update, :destroy]
      resources :phones, only: [:index, :show, :create, :update]

    end
  end

end
