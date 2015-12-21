Rails.application.routes.draw do
  root 'japanrates#index'
  resources :japanrates

  namespace :admin do
    root 'japanrates#index'
    resources :japanrates
  end
end
