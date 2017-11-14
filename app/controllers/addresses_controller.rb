class AddressesController < ApplicationController

  def create
    @address = Address.new(address_params)
    @user = current_user
    @address.user_id = @user.id

  end

  private

  def set_address
     @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street_address, :city, :country, :postal_code, :phone_number)
  end
end
