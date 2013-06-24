MusicianWebsite::Application.routes.draw do

  resources :pages


  root :to => 'static#home'

  get "static/home"

  get "static/lessons"

  get "static/classes"

  get "static/weddings"

  get "static/testimonials"

  get "static/resume"

  devise_for :users
  #alternate easy-to-remember path for admin login:
  devise_for :user, :path => '', :path_names => { :sign_in => "admin" }
end
