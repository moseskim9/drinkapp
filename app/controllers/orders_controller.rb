class OrdersController < ApplicationController
  def index
    @order = current_user.current_order
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
  end
end
