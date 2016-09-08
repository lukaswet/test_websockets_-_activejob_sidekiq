Rails.application.routes.draw do
  mount ChatApi::ApiV1 => '/'
  
  resources :messages
  root 'messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
