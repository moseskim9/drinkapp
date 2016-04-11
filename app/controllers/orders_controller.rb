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

    # address_id = params[:order][:address_id]

    @amount = @order.make_subtotal * 100

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email: params[:stripeEmail]
    )
    # You should store this customer id and re-use it.

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,        # in cents
      description:  "Payment for drink order",
      currency:     'eur'
    )
    @order.address_id = params[:order][:address_id]
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
    @service_fee = @subtotal * 0.09
    @total = @subtotal * 1.09
    @addresses = current_user.addresses.all
  end

  def show
    # address_id = params[:order][:address_id]
    @store = Store.find(params[:store_id])
    @order = current_user.orders.find_by_store_id(@store)
    @subtotal = @order.make_subtotal
    @service_fee = @subtotal * 0.09
    @total = @subtotal * 1.09
    @address = Address.find(@order.address_id)
    # @address= Address.find(params[:order][:address_id])
    @user = current_user
  end
end
