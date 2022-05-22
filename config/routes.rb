Rails.application.routes.draw do
  resources :kinds
  
  # 127.0.0.1:3000/contacts?version=1
  scope module: "v1", constraints: lambda{ |request| request.params[:version] == "1"} do
    resources :contacts do 
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: "relationships/kind"

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: "relationships/phones"

      resource :address, only: [:show]
      resource :address, only: [:show], path: "relationships/address"
    end
  end

# 127.0.0.1:3000/contacts?version=2
scope module: "v1", constraints: lambda{ |request| request.params[:version] == "2"} do
    resources :contacts do 
      resource :kind, only: [:show]
      resource :kind, only: [:show], path: "relationships/kind"

      resource :phones, only: [:show]
      resource :phones, only: [:show], path: "relationships/phones"

      resource :address, only: [:show]
      resource :address, only: [:show], path: "relationships/address"
    end
end

   root "contacts#index"
end
