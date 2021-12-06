Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/devs", to: "pages#devs", as: :devs
  get "index", to: "pages#index", as: :index
  get "about", to: "pages#about", as: :about

  get "profile", to: "pages#profile", as: :profile
  get "edit-profile", to: "pages#edit", as: :edit_profile
  get "map", to: "pages#map", as: :map


  resources :tales, shallow: true do
    resources :scenes
  end
end
