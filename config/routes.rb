Rails.application.routes.draw do
  resources :products, :invoices, :orders, :users
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/landing_page'
  root 'simple_pages#landing_page'

  resources :orders, only: %i[index show create destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
