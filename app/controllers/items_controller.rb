class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  def edit
  end

  def update
    @item.update(item_params)
  end

  def destroy
    @item.destroy
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
