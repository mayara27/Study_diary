class ItemController < ApplicationController

  before_action :authenticate_user!
    def new
      @item = Item.new
    end

    def index
      @items = Item.all
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new
      end

    end

    def edit
      @item = Item.find(params[:id])
    end

    def show;end

    def update
      @item = Item.find(params[:id])

      if @item.update(item_params)
        redirect_to root_path
      else
        render :edit
      end
  
    end

    def destroy
      item = Item.find(params[:id]) 
      item.destroy
      redirect_to root_path
      end

      def search
        @items = Item.where("name LIKE ?", "%"+params[:q]+"%")
      end

      def item_params
        params.require(:item).permit(:name, :category, :description, :tipo, :deadline, :status, :comment, :done)
      end

  end
