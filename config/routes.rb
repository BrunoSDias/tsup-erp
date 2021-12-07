Rails.application.routes.draw do
  root 'filmes#index'
  resources :filmes
  resources :usuarios

  get '/gerar_relatorio', to: 'filmes_favoritos#gerar_relatorio'
end
