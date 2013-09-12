Urgentcy::Application.routes.draw do

  ActiveAdmin.routes(self)
  resources :locations
  resources :surgeons
  resources :surgical_procedures
  resources :surgical_specialties
  resources :urgency_categories

  devise_for :users

  scope "static_pages", controller: :static_pages do
    get "/home" => :home, as: :home_page
    get "/help" => :help, as: :help_page
  end

  root to: "static_pages#home"
end
