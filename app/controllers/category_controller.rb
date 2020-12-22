class CategoryController < ApplicationController

    def new
   
    end

    def create
      @category = Category.new(params.require(:category).permit(:name))
      @category.save
      redirect_to root_path
    end

    def edit
      @category = Category.find(params[:id])
    end

    def show;end

    def update
      @category=  Category.find(params[:id])
      @category.update(params.require(:category).permit(:name))
      render :category
    end

    def destroy
      category = Category.find(params[:id]) 
      category.destroy
      redirect_to root_path
      end

end