Rails.application.routes.draw do
  resources :roles
  devise_for :users
  get 'categories/', to: 'categories#index'
  get 'categories/new', to: 'categories#new', as: 'new_category'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories', to: 'categories#create'
  get 'categories/:id/edit',to: 'categories#edit', as: 'edit_category'
  patch 'categories/:id' ,to: 'categories#update', as: 'update_category'
  delete 'categories/:id', to: 'categories#destroy'
  
  root 'articles#index'
  get 'articles/', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new', as: 'new_article'
  get 'articles/:id', to: 'articles#show', as: 'show_article'
  post 'articles', to: 'articles#create'
  get 'articles/:id/edit',to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id' ,to: 'articles#update', as: 'update_article'
  delete 'articles/:id', to: 'articles#destroy', as: 'article_delete'

  get 'errors', to: 'errors#index', as: 'errors'

  get 'postcomments', to: 'postcomments#index'
  get 'postcomments/new', to: 'postcomments#new'
  get 'postcomments/:id', to: 'postcomments#show', as: 'postcomment'
  post 'postcomments/', to: 'postcomments#create'
  get 'postcomments/:id/edit', to: 'postcomments#edit', as: 'postcomment_edit'
  patch 'postcomments/:id', to: 'postcomments#update'
  delete 'postcomments/:id', to: 'postcomments#destroy'
    
  
  
  end