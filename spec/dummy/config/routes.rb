Dummy::Application.routes.draw do
  resources :home
  resources :manifests

  root :to => 'home#index'
end
