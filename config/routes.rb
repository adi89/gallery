R20130319PhotoAlbm::Application.routes.draw do
  root :to => 'home#index'
  resources :albums, :only => [:new, :create, :show] do
    member do
      get :filter
    end
  end


      #get albums/id/filter
  resources :photos,  :only => [:new, :create]
end
