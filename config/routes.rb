Rails.application.routes.draw do
  root :to => 'oauth#index'
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  root 'posts#index'
  resources :posts do
    collection do
      post :confirm
    end
  end
end
