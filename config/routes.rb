ClickTheCampus::Application.routes.draw do
  resources :events

  devise_for :users

  authenticated :user do
    root to: 'events#index', as: 'events'
  end

  root :to => 'events#index'
end
