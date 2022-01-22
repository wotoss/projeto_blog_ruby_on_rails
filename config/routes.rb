Rails.application.routes.draw do
  #foi construido com o scaffold
  resources :authors
  #quando eu acessar /site => ele vai acessar minha controller site#e a action index site#index
  #posso comentar este get => como posso deixar tambem.
  get '/site', to: 'site#index' #posso deixar => acesso localhost:3000/site
  #usando o root eu configurei a minha url ao inves de ficar localhost:3000/site
  #agora com o root ficou => localhost:3000/ (vou acessar a index)
  root to: 'site#index' #posso deixar => localhost:3000/ 
  #apenas com este comando iremos fazer várias rotas
  #resources :users
end
