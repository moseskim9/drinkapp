class OrderLinesController < ApplicationController


  def index
  end

  def show
  end

  def new
    @item = Item.find(params[:item_id])
    @store = @item.store
    @orderline = @item.order_lines.new
  end

  def create
    @order = current_user.current_order

    unless(@order)
      @order = Order.create(user: current_user)
    end

    @item = Item.find(params[:item_id])
    @store = @item.store
    @order_line = @item.order_lines.build(order_line_params)
    @order_line.order = @order
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
  end

  private

  def order_line_params
    params.require(:order_line).permit(:quantity, :special_instruction)
  end

  def find_order_line
    @order_line = OrderLine.find(params[:id])
  end
end
