Myrottenpotatoes::Application.routes.draw do
  get "movies/index"
  resources :movies
  root :to => redirect('/movies')
end
