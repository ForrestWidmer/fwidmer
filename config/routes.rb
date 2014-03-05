Fwidmer::Application.routes.draw do

  #devise_for :users

  root to: 'welcome#index'

  get "contact/new"

  #get "contact/create"

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  get "welcome/index"

  get "welcome/about"

  get "welcome/updates"

  get "welcome/services"


  resources "contact", only: [:new, :create]

  resources :posts do
    collection do
      get :index
    end
  end

  if Rails.env == 'production'
    devise_for :users, :controllers => { :registrations => "registrations" } 
  else
    devise_for :users, :controllers => { :registrations => "registrations" } 
  end

  
end
