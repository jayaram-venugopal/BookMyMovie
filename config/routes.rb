Rails.application.routes.draw do
  authenticated :user do
    root 'bookings#index', as: :authenticated_root
  end

  root 'shows#index'
  # root 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :bookings, only: [:index]
   
  resources :shows, only: [:index, :show] do
    collection do
      get '/:id/seating', :to => 'shows#seating', :as => 'seating'
    end
  end
end
