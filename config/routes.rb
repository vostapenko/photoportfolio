Photoportfolio::Application.routes.draw do

  root to: "genres#index"

  match "/about",       to: "static_pages#about"
  match "/contact",     to: "static_pages#contact"
  match "/help",        to: "static_pages#help"

  resources :genres, except: [:show] do 
    resources :albums, except: [:show] 
  end
    
  resources :albums, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
     resources :paintings, except: [:show]
  end

end
