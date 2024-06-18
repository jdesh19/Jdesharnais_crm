class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end


private
  def customer_params
    params.require(:customer).permit(:full_name, :phone_number, :email_address, :notes)
  end
end
