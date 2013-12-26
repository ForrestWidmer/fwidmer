Fwidmer::Application.routes.draw do
  get "welcome/index"

  get "welcome/about"

  get "welcome/updates"

  get "welcome/contact"

  root to: 'welcome#index'
end
