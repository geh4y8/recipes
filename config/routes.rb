Rails.application.routes.draw do
  match('/', {via: :get, to: 'homepages#index'})
  root to: 'homepages#index'
  resources :recipes, except: [:new]
  resources :tags, except: [:new]
end
