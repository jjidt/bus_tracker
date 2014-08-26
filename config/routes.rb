Rails.application.routes.draw do
  resources :lines do
    resources :stations, :only => [:show] do
      resources :stops, :only => [:new, :edit, :show]
    end
  end

  resources :stations do
    resources :lines, :only => [:show]
    resources :stops, :only => [:show]
  end

  root :to => 'lines#index'
end
