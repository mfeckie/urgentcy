Urgentcy::Application.routes.draw do
  resources :surgical_specialties

  devise_for :users

  scope "static_pages", controller: :static_pages do
    get "/home" => :home, as: :home_page
    get "/help" => :help, as: :help_page
  end

  root to: "static_pages#home"
end
