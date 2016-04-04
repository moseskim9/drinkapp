class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all

  end

  def show
    @items = Item.all

  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @store.update(store_params)
    @store.save
  end

  def destroy
    @store.destroy
  end

  private

  def find_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:image, :address, :postcode, :city, :country)
  end
end
