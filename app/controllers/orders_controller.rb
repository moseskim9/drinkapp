class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @store =  Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    if !@order
      redirect_to store_path(@store)
    else
      @order_lines = @order.order_lines
      @subtotal = @order.make_subtotal
      # @pricing = @order.size_and_price

      @order_lines.each do |order_line|
        if order_line.size == "Small"
          @small = order_line.item.price
        elsif order_line.size == "Medium"
          @medium = order_line.item.medium_price
        else
          @large = order_line.item.large_price
        end
      end
    end
  end


  def new
  end

  def create
  end

  def edit
  end

  def update
    @order = Order.find(params[:id])
    @store = Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    @subtotal = @order.make_subtotal
    @order_quantity = 0

    current_user.orders.find_by_store_id(@store.id).order_lines.each do |order_line|
      @order_quantity += order_line.quantity
    end
    @delivery_fee = @order_quantity * 2
    @total = (@delivery_fee + @subtotal)
    # @service_fee = @total * 0.09
    @finaltotal = ((@total * 1.09) * 100).to_i

    # address_id = params[:order][:address_id]


    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email: params[:stripeEmail]
    )
    # You should store this customer id and re-use it.

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @finaltotal,        # in cents
      description:  "Payment for drink order",
      currency:     'eur'
    )
    @order.address_id = params[:order][:address_id]
    @order.cell = params[:order][:cell]
    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to store_order_path(@store, @order)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to store_checkout_path(@store)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to store_current_order_path(@order.store)
  end

  def checkout
    @store = Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    @subtotal = @order.make_subtotal
    @order_quantity = 0
    current_user.orders.find_by_store_id(@store.id).order_lines.each do |order_line|
      @order_quantity += order_line.quantity
    end
    @order_quantity

    if @order_quantity > 4
      @delivery_fee = 6
    elsif @order_quantity > 2
      @delivery_fee = 4 + (@order_quantity - 2)
    else @order_quantity <= 2
      @delivery_fee = @order_quantity * 2
    end
    @delivery_fee

    @total = (@delivery_fee + @subtotal)
    @service_fee = @subtotal * 0.098
    @tax = @subtotal * 0.09
    @tax_and_fee = @service_fee + @tax
    @finaltotal = @tax_and_fee + @total

    # @finaltotal = @total + @service_fee
    @addresses = current_user.addresses.all
  end

  def show
    @user = current_user
    @store = Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    @cell = current_user.orders.find_by_store_id(@store).cell
    @address = Address.find(@order.address_id)
    # address_id = params[:order][:address_id]
    @subtotal = @order.make_subtotal
    @order_quantity = 0
    @user.orders.find_by_store_id(@store.id).order_lines.each do |order_line|
      @order_quantity += order_line.quantity
    end
    @order_quantity
    @delivery_fee = @order_quantity * 2
    @total = (@delivery_fee + @subtotal)
    @finaltotal = @total * 1.09
  end

  def current_order
    orders.last ? orders.last : nil
  end



end
