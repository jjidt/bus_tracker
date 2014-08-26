Rails.application.routes.draw do
  resources :lines
  root :to => 'lines#index'
end
