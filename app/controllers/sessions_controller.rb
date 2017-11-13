class SessionsController < ApplicationController
  include SessionsHelper

  def new; end

  def create
    customer = Customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password])
      log_in(customer)
      redirect_to home_index_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    session.delete(:customer_id)
    redirect_to home_index_path
  end
end