Rails.application.routes.draw do
  root to: 'home#index'
  get 'contact', to: 'static_pages#contact', as: 'contact'
end
