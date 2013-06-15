Passtory::Application.routes.draw do
  resources :posts


  get "top/index"
  root :to => 'top#index'
end
