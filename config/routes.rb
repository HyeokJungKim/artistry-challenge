Rails.application.routes.draw do
  
  get 'instruments/index'
  resources :logs
  resources :instruments
  resources :artists
end
