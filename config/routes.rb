MusicianWebsite::Application.routes.draw do

  root :to => 'static#home'

  get "static/home"

  get "static/lessons"

  get "static/classes"

  get "static/weddings"

  get "static/testimonials"

  get "static/resume"

  devise_for :users
end
