Rails.application.routes.draw do
  devise_for :users

  resources :licenses do
    post :import, on: :collection
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
