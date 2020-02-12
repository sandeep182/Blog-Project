Rails.application.routes.draw do
  devise_for :users
  get 'categories/', to: 'categories#index'
  get 'categories/new', to: 'categories#new', as: 'new_category'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories', to: 'categories#create'
  get 'categories/:id/edit',to: 'categories#edit', as: 'edit_category'
  patch 'categories/:id' ,to: 'categories#update', as: 'update_category'
  delete 'categories/:id', to: 'categories#destroy'
  
  #root 'categories#show'
  get 'articles/', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new', as: 'new_article'
  get 'articles/:id', to: 'articles#show', as: 'show_article'
  post 'articles', to: 'articles#create'
  get 'articles/:id/edit',to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id' ,to: 'articles#update', as: 'update_article'
  #delete 'articles/:id', to: 'articles#destroy'
  delete 'articles/:id', to: 'articles#destroy', as: 'article_delete'
    
  
  
  end