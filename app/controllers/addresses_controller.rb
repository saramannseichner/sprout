class AddressesController < ApplicationController
  #before_action :find_order_address, only: [:create]

  def create

    # if @address
    #   puts 'updapte'

    #   if @address.update(address_params)
    #     respond_to do |format|
    #       format.html { redirect_to new_order_path }
    #       format.js {  flash[:notice] = "Saved !" } # <-- will render `app/views/reviews/create.js.erb`
    #     end
    #   else
    #     respond_to do |format|
    #       format.html { redirect_to new_order_path }
    #       format.js  {  flash[:notice] = "Not saved !" }  # <-- will render `app/views/reviews/create.js.erb`
    #     end
    #   end
    # else
      puts 'create'
      @address = Address.new(address_params)
      @address.user = current_user



      if @address.save
        @alert_message = "Great Job"
        @alert_message_success = true
      else
        @alert_message = "You Suck"
        @alert_message_success = false
      end

      respond_to do |format|
        format.js
        format.html
      end

  end

  private

  def find_order_address
    @address = current_order.address
  end

  def address_params
    params.require(:address).permit(:street_address, :city, :country, :postal_code, :phone_number, :first_name, :last_name)
  end
end
