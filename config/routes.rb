Rails.application.routes.draw do
  resources :posts
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Admin Zone
  devise_for :admins,
    path: 'admins',
    path_names: { sign_in: 'login',
                  sign_out: 'logout',
                  password: 'secret',
                 # confirmation: 'verification',
                 # unlock: 'unblock',
                 # registration: 'register',
                  sign_up: 'register' }

  authenticate :admin do
    namespace :admins do
      resources :things  #/admins/things
      root 'things#index'
    end
  end



#User Zone
  devise_for :users,
    path: 'users',
    path_names: { sign_in: 'login',
                  sign_out: 'logout',
                  password: 'secret',
                 # confirmation: 'verification',
                 # unlock: 'unblock',
                 # registration: 'register',
                  sign_up: 'register' }


  authenticate :user do
    namespace :users do
      resources :things  #/users/things
      root 'things#index'
    end
  end


  root 'pages#home'
end
