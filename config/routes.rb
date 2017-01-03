Rails.application.routes.draw do
  devise_for :admins
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,

    path: 'users',
    path_names: { sign_in: 'login',
                  sign_out: 'logout',
                  password: 'secret',
                 # confirmation: 'verification',
                 # unlock: 'unblock',
                 # registration: 'register',
                  sign_up: 'register' }


  #
  authenticate :user do
    namespace :users do
      resources :things  #/users/things
      root 'things#index'
    end
  end

  root 'pages#home'
end
