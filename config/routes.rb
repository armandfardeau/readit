Rails.application.routes.draw do
  root 'stories#index'

  resources :stories do
    resources :votes do

    end
  end
  resource :session

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
