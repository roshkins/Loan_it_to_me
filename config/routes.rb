LoanItToMe::Application.routes.draw do

  root to: "sessions#new"
  resources :categories
  resource  :session, only: [:create, :new, :destroy]
  resources :users
  resources :homes
  # nest items underneath homes?
  resources :items
  resource  :admin
  resources :rentals
  resources :rental_reviews
  
end

