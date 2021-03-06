Rails.application.routes.draw do

resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

root 'pages#index'
get 'trail_calculator' => 'pages#trail_calculator'
get 'welcome' => 'pages#index'
post 'contact_us' => 'pages#contact_save'
get 'contact_us' => 'pages#contact_us'
get 'about_us' => 'pages#about_us'
get 'business' => 'pages#business'
get 'test' => 'businesses#test'
#get 'signup' => 'pages#signup'

resources :businesses

resources :favourites
get 'offleash_toronto' => 'pages#offleash_toronto'

get '/sign_up', to: 'users#new', as: :sign_up
get '/log_in', to: 'sessions#new', as: :log_in
get '/log_out', to: 'sessions#destroy', as: :log_out

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
