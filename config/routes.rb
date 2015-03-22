Rails.application.routes.draw do
  get "contact", to: "static_pages#contact", as: "contact"
  get "services", to: "static_pages#services", as: "services"
  root to: "static_pages#home"
end
