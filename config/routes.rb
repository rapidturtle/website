Rails.application.routes.draw do
  get 'contact', to: 'static_pages#contact', as: 'contact'
  root to: 'static_pages#home'
end
