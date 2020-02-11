Rails.application.routes.draw do
  get 'categories/', to: 'categories#index'
  get 'categories/new', to: 'categories#new', as: 'new_category'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories', to: 'categories#create'
  get 'categories/:id/edit',to: 'categories#edit', as: 'edit_category'
  patch 'categories/:id' ,to: 'categories#update', as: 'update_category'
  delete 'categories/:id', to: 'categories#destroy'
  
  #root 'categories#show'
  get 'articles/', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'
    
   
  end