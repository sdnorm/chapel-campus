Rails.application.routes.draw do
  namespace :admin do
      resources :sermons
      resources :sermon_sections

      root to: "sermons#index"
    end
  resources :sermon_sections
  resources :sermons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
