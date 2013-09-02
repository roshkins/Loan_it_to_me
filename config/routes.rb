LoanItToMe::Application.routes.draw do
  root to: "sessions#new"
  resources :categories
  resource  :session, only: [:create, :new, :destroy]
  resources :users

end

