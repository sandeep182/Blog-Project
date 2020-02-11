class CategoriesController < ApplicationController
  def index
    @categories = Category.all  
  end
  def show
    @category = Category.find(params[:id])
  end
  def new
    @category = Category.new
  end
  def edit
    @category = Category.find(params[:id])
  end
  def create
    @category = Category.new
    @category.name = params["category"]["name"]
    @category.description = params["category"]["description"]
      if @category.save
        redirect_to category_path(@category)
      else
      end
 end

  def update
   @category = Category.find(params[:id])
   if @category.update_attributes(category_params)
     redirect_to category_path(@category.id)
   else
     render action: 'edit'
   end
 end
 

end