class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email: nil)
  end

private
  def customer_params
    params.require(:customer).permit(:full_name, :phone_number, :email_address, :notes, :image)
  end
end
