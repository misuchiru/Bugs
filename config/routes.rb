Rails.application.routes.draw do
  devise_for :users
  root 'japanrates#index'
  resources :japanrates
  resources :japan_weathers

  namespace :admin do
    root 'japanrates#index'
    resources :japanrates
    resources :japan_weathers
  end
end
