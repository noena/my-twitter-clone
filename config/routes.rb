Rails.application.routes.draw do
  devise_for :users
  #root "index#tweets"
  resources :tweets
end
