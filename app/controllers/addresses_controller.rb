class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def show
  end

  def new
    @user = current_user
    @address = @user.addresses.new
  end

  def create
    @user = current_user
    @store = Store.find(params[:store_id])

    @address = @user.addresses.build(address_params)
    if @address.save

      redirect_to store_checkout_path(@store)
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
      @address.update(item_params)
  end

  def destroy
  end

private

  def find_item
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street_name, :number, :city, :state, :zip_code, :country, :store_id)
  end

end
