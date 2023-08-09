Rails.application.routes.draw do
  resources :user_bookings
  resources :users
  resources :libraries
  resources :books
 # root "hello#index"
end
