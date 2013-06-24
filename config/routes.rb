MusicianWebsite::Application.routes.draw do

  resources :pages do 
    member do
      get "set_home"
    end
    collection do
      get "home"
    end
  end
  match 'pages/:id', :to => "pages#show", :as => :page, :via => :get

  root :to => 'pages#home'

  get "static/home"

  get "static/lessons"

  get "static/classes"

  get "static/weddings"

  get "static/testimonials"

  get "static/resume"

  devise_for :users
  #alternate easy-to-remember path for admin login:
  devise_for :user, :path => '', :path_names => { :sign_in => "admin" }

  post "versions/:id/revert" => "versions#revert", :as => "revert_version"
  get "versions/:id/show" => "versions#show", :as => "show_version"
end
