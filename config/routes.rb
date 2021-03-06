Rails.application.routes.draw do
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "welcome#index"

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'

   post "order_complete" => "carts#order_complete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
