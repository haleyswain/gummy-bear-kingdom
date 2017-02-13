Rails.application.routes.draw do
  root :to => 'bears#index'
  resources :bears
end
