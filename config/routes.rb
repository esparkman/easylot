Rails.application.routes.draw do
  devise_for :users,
             path: 'admin',
             controllers: {
               sessions: 'users/sessions'
             }

  as :user do
    get '/login' => 'devise/sessions#new'
    delete '/logout' => 'devise/sessions#destroy'
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
