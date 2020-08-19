Rails.application.routes.draw do
  resources :games, only:[:index,:show,:update,:create,:delete]
  resources :players, only:[:show,:create,:update,:delete]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
