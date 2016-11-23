Rails.application.routes.draw do


  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }



  resources :users, only: [:index, :show, :edit, :update] do
  end

  resources :tasks


  resources :followed_users, only: [:index]
  resources :followers, only: [:index]

  resources :relationships, only: [:create, :destroy]

  resources :blogs do
    resources :comments

   collection do
      post :confirm
    end
  end

 resources :contacts, only: [:new, :create] do
   collection do
      post :confirm
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  root 'top#index'

end
