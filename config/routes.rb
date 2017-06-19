Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome, only: [:index]
  resources :soccerfields
  resources :users
end
