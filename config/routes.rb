ClickTheCampus::Application.routes.draw do
  get "start/index"

  resources :events

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users/sign_in' => 'devise/sessions#new'
  end

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root to: 'start#index', as: :start_page
end
