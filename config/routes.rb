Rails.application.routes.draw do
  resources :products, :invoices, :orders, :users
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get '/products/:id', to: 'products#show'
  get 'simple_pages/landing_page'
  root 'products#index'

  resources :orders, only: %i[index show create destroy]
  resources :users, only: [:new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
