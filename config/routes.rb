Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: 'patient/registrations'
}
  root "pages#home"
  resources :doctors, only:[:index]
  resources :appointments, only:[:index, :create, :show, :new]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
