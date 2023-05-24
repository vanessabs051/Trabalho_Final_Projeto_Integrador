Rails.application.routes.draw do
  resources :itens
  resources :vendas
  devise_for :users
  resources :produtos
  resources :fornecedors
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
