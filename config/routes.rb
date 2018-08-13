Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  
  root 'posts#index'
  resources :posts do
    collection do
      post :confirm
    end
  end
end
