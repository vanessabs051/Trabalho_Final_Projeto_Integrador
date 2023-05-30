Rails.application.routes.draw do
  resources :itens
  resources :vendas, :path => "vendas" do
    collection do
      get "/relatorio"  => "vendas#relatorio", :as => "relatorio" 
    end
  end
  devise_for :users
  resources :produtos, :path => "produtos" do
    collection do
      get "/relatorio"  => "produtos#relatorio", :as => "relatorio" 
    end
  end
  resources :fornecedors, :path => "fornecedors" do
    collection do
      get "/relatorio"  => "fornecedors#relatorio", :as => "relatorio" 
    end
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
