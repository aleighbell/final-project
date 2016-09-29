Rails.application.routes.draw do

resources :users, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]

root 'pages#index'
get 'welcome' => 'pages#index'
post 'contact-us' => 'pages#contact_save'
get 'contact-us' => 'pages#contact_us'
get 'about_us' => 'pages#about_us'
get 'business' => 'pages#business'
<<<<<<< HEAD
get 'signup' => 'pages#signup'
get 'business_index' => 'business#index'
resources :business
=======
#get 'signup' => 'pages#signup'

get '/sign_up', to: 'users#new', as: :sign_up
get '/log_in', to: 'sessions#new', as: :log_in
delete '/log_out', to: 'sessions#destroy', as: :log_out

>>>>>>> authentication
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
