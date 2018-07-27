Rails.application.routes.draw do
  devise_for :users,
             path: 'admin',
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions',
             }, skip: [:sessions]

 as :user do
   get 'login' => 'users/sessions#new', as: :new_user_session
   post 'login' => 'users/sessions#create', as: :user_session
   delete 'logout' => 'users/sessions#destroy', as: :destroy_user_session
   get 'register' => 'users/registrations#new'
 end

  namespace :admin do
    resources :announcements
    resources :vehicles do
      resources :photos
    end
    resources :settings
  end

  resources :announcements, only: [:index, :show]

  resources :vehicles do
    resources :photos, only: [:index, :show]
    collection do
      get :search
      get :autocomplete
    end
  end

  get 'admin' => 'admin/vehicles#index'
  root 'listings#index'
end
