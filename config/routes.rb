Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index] 
  resources :heroine_powers 
end
