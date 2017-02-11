Rails.application.routes.draw do
  root to: 'events#new'
  resources :events, ony: [:create, :new, :show]
end
