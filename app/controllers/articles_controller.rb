class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
    
    def new
      @article = Article.new
    end
  
    def create
      
      @article = Article.new
      @article.title = params['article']['title']
      @article.body = params['article']['body']
      @article.category_id = params['article']['category_id']
      @article.publish_date = params['article']['publish_date']
      @article.feature_image_url = params['article']['feature_image_url']
      if params['article']['is_published'] == "1"
        @article.is_published = true
      else
        @article.is_published = false
      end
    end
  end