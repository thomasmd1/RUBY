Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    root 'homepage#index'

    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
    post '/footers/new', to: 'footers#new', as: 'footer_new'

    namespace :account do
      resources :users, only: [:index,:update]
      resources :contacts ,only: [:index]
      resources :messages,only: [:index]
      resources :comments
    end

    resources :listings, only: [:index,:show,:new]
    resources :footers, only: [:index,:show,:new]

    devise_for :users
  end

end
