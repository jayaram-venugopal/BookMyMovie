Rails.application.routes.draw do
  root 'shows#index'
  # root 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :shows, only: [:index, :show]
end
