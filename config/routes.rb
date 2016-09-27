Rails.application.routes.draw do

root 'pages#index'
get 'welcome' => 'pages#index'
get 'contact-us' => 'pages#contact_us'
get 'business' => 'pages#business'
get 'signup' => 'pages#signup'
get 'business_index' => 'business#index'
resources :business
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
