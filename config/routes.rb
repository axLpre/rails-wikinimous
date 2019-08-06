Rails.application.routes.draw do
  # CONVENTION 2
  # HTTP_VERB 'URL', to: 'CONTROLLER#ACTION'
  root to: 'pages#home' # always the first one

  # resources :restaurants

  # READ
  get 'articles',     to: 'articles#index'

  # CREATE
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles',    to: 'articles#create'

  # READ BIS
  get 'articles/:id', to: 'articles#show', as: 'article'

  # UPDATE
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id',    to: 'articles#update'

  # DELETE
  delete 'articles/:id', to: 'articles#destroy'

  # get 'about',   to: 'pages#about'
  # get 'contact', to: 'pages#contact'
end
