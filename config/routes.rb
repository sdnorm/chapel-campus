Rails.application.routes.draw do
  post 'emails/sermon_notes', to: 'emails#sermon_notes', as: :send_sermon_notes_email
  devise_for :users, controllers: {registrations: "registrations"}
  namespace :admin do
    resources :sermons
    resources :sermon_sections

    root to: "sermons#index"
  end

  root to: "sermons#index"
  resources :sermon_sections
  resources :sermons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
