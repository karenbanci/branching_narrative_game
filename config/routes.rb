Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users
  get "profile", to: "pages#profile", as: :profile
  get "edit-profile", to: "pages#edit", as: :edit_user_registration

end
