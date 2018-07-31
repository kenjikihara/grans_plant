Rails.application.routes.draw do
  get 'posts/index'
  root 'static_pages#index'
end
