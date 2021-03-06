LoanItToMe::Application.routes.draw do

  root to: "categories#index"
  resources :categories
  resource  :session, only: [:create, :new, :destroy]
  resources :users
  resources :homes
  resources :items do
    resources :rentals
  end
  resources :rental_reviews
  
end

