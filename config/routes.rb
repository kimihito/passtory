Passtory::Application.routes.draw do
  resources :posts


  get "today" => 'posts#today'
  get "ranking" => 'posts#ranking'
  root :to => 'posts#index'
end
