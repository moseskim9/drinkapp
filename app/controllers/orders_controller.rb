class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @order = current_user.current_order
    @order_lines = @order.order_lines
    @subtotal = 0

  end

  def show
    @order = Order.find(params[:id])
    @email = current_user.email
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
    redirect_to current_order_path
  end
end
