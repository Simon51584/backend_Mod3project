Rails.application.routes.draw do
  resources :games, only:[:index,:show,:update,:create,:destroy]
  resources :players, only:[:show,:create,:update,:destroy]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
