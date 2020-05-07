Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
  resources :souscategories
  resources :categories
  resources :members

  get '/admin', to: 'users#admin', as: :admin_root
  get '/demande-videos', to: 'pages#demandevideos', as: :demandevideos
  post '/demande-videos', to: 'pages#create'
  get '/messageok', to: 'pages#messageok', as: :messageok
  get '/qui-sommes-nous', to: 'pages#quisommesnous', as: :quisommesnous
  get '/contact', to: 'pages#contact', as: :contact

end
