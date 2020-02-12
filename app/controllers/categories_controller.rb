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
    @category = Category.new(set_param)
    #@category.name = params["category"]["name"]
    #@category.description = params["category"]["description"]
      if @category.save
        flash[:notice] = "Page created successfully....."
        redirect_to category_path(@category)
      else
        render action: 'new'
      end
 end

  def update
   @category = Category.find(params[:id])
   @category.name = params["category"]["name"]
   @category.description = params["category"]["description"]
   if @category.save  
     redirect_to category_path(@category.id)
   else
     render action: 'edit'
   end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end   

  def set_param
    params.require(:category).permit(:name, :description)
  end  
end  