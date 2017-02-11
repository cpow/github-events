Rails.application.routes.draw do
  root to: 'event_searches#new'
  resources :event_searches, ony: [:create, :new, :show]
end
