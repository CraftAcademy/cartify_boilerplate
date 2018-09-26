Rails.application.routes.draw do
  devise_for :users
  root controller: :products, action: :index
end
