class OrderLinesController < ApplicationController

  before_action :authenticate_user!
  def index
  end

  def show
  end

  def new
    @item = Item.find(params[:item_id])
    @store = @item.store
    @orderline = @item.order_lines.new

    render layout: nil
  end

  def create
    @store = Store.find(params[:store_id])
    @order = current_user.orders.where(store_id: @store).last
    if  !@order
      @order = @store.orders.create(user: current_user, state: 'pending')
    end


    @order_line = @order.order_lines.build(order_line_params)
    @order_line.item_id = params[:item_id]
    if @order_line.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @order_line = OrderLine.find(params[:id])
    @order_line.destroy
    redirect_to store_current_order_path(@order_line.store)
  end

  private

  def order_line_params
    params.require(:order_line).permit(:quantity, :special_instruction)
  end

  def find_order_line
    @order_line = OrderLine.find(params[:id])
  end
end
