class AddressesController < ApplicationController
  # def index
  #   @addresses = Address.all
  # end

  # def new
  #   @address = Address.new
  # end

  def create
    @address = Address.new(address_params)
    @address.user = current_user
    if @address.save
      redirect_to new_order_path
    else
      raise
      render 'new'
    end
  end

  private

  # def set_address
  #    @address = Address.find(params[:id])
  # end

  def address_params
    params.require(:address).permit(:street_address, :city, :country, :postal_code, :phone_number, :first_name, :last_name)
  end

  def assign_user_params_to_address

  end
end
