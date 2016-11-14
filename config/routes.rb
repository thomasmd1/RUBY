Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    root 'homepage#index'
    resources :listings
    devise_for :users
  end

end
