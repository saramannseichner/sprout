class AddressesController < ApplicationController
  def create
    @address = Address.new(address_params)
    @address.user = current_user
    @address.save
  end

  private

  def address_params
    params.require(:address).permit(:street_address, :city, :country, :postal_code, :phone_number, :first_name, :last_name)
  end
end
