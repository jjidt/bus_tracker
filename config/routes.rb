Rails.application.routes.draw do
  resources :lines do
    resources :stations, :only => [:show]
  end

  resources :stations

  root :to => 'lines#index'
end
