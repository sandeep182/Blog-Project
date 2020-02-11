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

    def update
      @article = Article.find(params[:id])
      @article.title = params['article']['title']
      @article.body = params['article']['body']
      @article.category_id = params['article']['category_id']
      @article.publish_date = params['article']['publish_date']
      @article.feature_image_url = params['article']['feature_image_url']

      if @article.save
        redirect_to article_path(@article.id)
      else
        render action: 'edit'
      end    
      def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
      end   
      private
     
        def set_param
         params.require(:article).permit(:title, :body, :category_id, :publish_date, :feature_image_url, :is_published) 
       end 
end

