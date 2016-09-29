Rails.application.routes.draw do

root 'pages#index'
get 'welcome' => 'pages#index'
get 'contact_us' => 'pages#contact_us'
get 'about_us' => 'pages#about_us'
get 'business' => 'pages#business'
get 'signup' => 'pages#signup'
get 'business_index' => 'business#index'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
