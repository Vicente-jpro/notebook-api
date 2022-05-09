Rails.application.routes.draw do
  resources :kinds
  resources :contacts
   root "contacts#index"
end
