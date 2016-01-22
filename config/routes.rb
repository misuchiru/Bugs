Rails.application.routes.draw do
  devise_for :users
  root 'japanrates#index'
  resources :japanrates
  resources :japan_weathers

  namespace :admin do
    root 'japanrates#index'
    resources :japanrates
    resources :japan_weathers
    resources :posts
    resources :trips do
      resources :trip_events do
        collection do
          get :try
        end
      end
    end
  end
end
