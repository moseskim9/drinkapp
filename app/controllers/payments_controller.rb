class PaymentsController < ApplicationController



  def new
    @order = Order.find(params[:order_id])
    @store = Store.find(params[:store_id])

  end

  def create
    @order = Order.find(params[:order_id])
    @store = Store.find(params[:store_id])

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

    @order.update(payment: charge.to_json, state: 'paid')

    redirect_to store_order_path(@store, @order)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_order_payment_path(@order)
  end


private

  def set_order
    @order = Order.find(params[:order_id])
  end
end


