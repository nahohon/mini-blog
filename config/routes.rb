Rails.application.routes.draw do

  resources :comments
  devise_for :users, :controllers => {
    :registrations => 'users/registrations' ,
    :sessions => 'users/sessions'
  }

  resources :articles
  root "articles#index"

end
