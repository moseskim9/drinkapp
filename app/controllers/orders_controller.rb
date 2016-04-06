class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @store =  Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    if !@order
      redirect_to store_path(@store)
    else
      @order_lines = @order.order_lines
      @subtotal = 0
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to store_current_order_path(@order.store)
  end
end
