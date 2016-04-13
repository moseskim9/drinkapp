class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  def index
    @stores = Store.all
    # @item = @store.items
  end

  def show
    @item = @store.items
    @order_quantity = 0
    if current_user.orders.find_by_store_id(@store.id).nil? == false
      current_user.orders.find_by_store_id(@store.id).order_lines.each do |order_line|
        @order_quantity += order_line.quantity
      end
    end
    @order_quantity
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

  def search

    @city = params[:location]
    p  @city
    @stores_city = Store.near(@city, 50)


  end

  private

  def find_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:image, :address, :postcode, :city, :country)
  end
end
