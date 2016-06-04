Rails.application.routes.draw do
  devise_for :users,
             path: 'admin',
             controllers: {
               # confirmations: 'users/confirmations',
              #  passwords: 'users/passwords',
              #  registrations: 'users/registrations',
               sessions: 'users/sessions',
               # unlocks: 'users/unlocks',
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
