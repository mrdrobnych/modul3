Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'

  get 'pages/contact'
  get 'pages/gallery'


  get 'rooms/:bed', to: 'pages#show_room', as: 'room'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
