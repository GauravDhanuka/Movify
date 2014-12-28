Rails.application.routes.draw do
  
  devise_for :users

  resources :movies do
    resources :reviews, except: [:show, :index]    #nested resource for reviews
  end

  root 'movies#index' 

end
