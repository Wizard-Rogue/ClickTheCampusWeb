ClickTheCampus::Application.routes.draw do
  resources :events

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users/sign_in' => 'devise/sessions#new'
  end

  # authenticated :user do
  #   root to: 'events#index', as: 'events'
  # end

end
