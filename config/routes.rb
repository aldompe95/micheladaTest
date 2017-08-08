Rails.application.routes.draw do
  root :to => "panel#index"
  resources :brands
  resources :products
end
