Rails.application.routes.draw do
  root to: 'homepages#index'
  resources :recipes, except: [:new]
  resources :tags, except: [:new]
end
