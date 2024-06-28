Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :relatorio_financeiros
  resources :meta_financeiras
  resources :accounts
  resources :transacaos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # root "transacaos#index"

  authenticated :user do # Se estiver autenticado, entre no root que é "rails/health#show"
    root to: 'transacaos#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in') # Se NÃO estiver autenticado, redirecione para o login
end
