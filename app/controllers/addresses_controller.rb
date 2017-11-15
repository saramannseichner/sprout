class AddressesController < ApplicationController
  # def index
  #   @addresses = Address.all
  # end

  # def new
  #   @address = Address.new
  # end

  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to @address
    else
      render 'new'
    end
  end

  private

  # def set_address
  #    @address = Address.find(params[:id])
  # end

  def address_params
    params.require(:address).permit(:street_address, :city, :country, :postal_code, :phone_number)
  end
end
