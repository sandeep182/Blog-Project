class ArticlesController < ApplicationController
    def index
        @articles = Article.all  
      end
      
      def new
        @article = Article.new
      end
     
      def show
        @article = Article.find(params[:id])
      end
      
      def edit
        @article = Article.find(params[:id])
      end
      
      def create
        @article = Article.new
        @article.title = params['article']['title']
        @article.text = params['article']['text']
        @article.category_id = params['article']['category_id']
        @article.publish_date = params['article']['publish_date']
        @article.feature_image_url = params['article']['feature_image_url']
        @article.is_published = params["article"]["is_published"]
        if @article.save
          flash[:notice] = "Page created successfully....."
          redirect_to articles_path
        else
        end 
     end
    
      def update
        @article = Article.find(params[:id])
        @article.title = params["article"]["title"]
        @article.text = params["article"]["text"]
        @article.category_id = params["article"]["category_id"]
        @article.publish_date = params["article"]["publish_date"]
        @article.feature_image_url = params["article"]["feature_image_url"]
        @article.is_published = params["article"]["is_published"]
    
        if @article.save
          redirect_to articles_path
        else
          render action: 'edit'
        end
      end
     
      def destroy
        @article = Article.find(params[:id])
        if @article.destroy
            redirect_to articles_path
          else
            redirect_to categories_path
          end
      end
      
      def set_param
        params.require(:article).permit(:title, :body, :category_id, :publish_date, :feature_image_url, :is_published) 
      end
      
      def set_article
       @article = Article.friendly.find(params[:id])
      end 
end
