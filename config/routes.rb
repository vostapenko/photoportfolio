Photoportfolio::Application.routes.draw do

  root to: "static_pages#home"

  match "/about",       to: "static_pages#about"
  match "/contact",     to: "static_pages#contact"
  match "/help",        to: "static_pages#help"

  resources :genres
  resources :albums
  resources :paintings

end
