Fwidmer::Application.routes.draw do
  get "contact/new"

  #get "contact/create"

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  get "welcome/index"

  get "welcome/about"

  get "welcome/updates"

  get "welcome/contact"

  resources "contact", only: [:new, :create]

  root to: 'welcome#index'
end
