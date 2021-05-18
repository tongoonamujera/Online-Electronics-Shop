Rails.application.routes.draw do
  resources :home_appliances
  resources :headphones
  resources :televisions
  resources :laptops
  resources :cell_phones
  root: "cell_phones#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
