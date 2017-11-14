class SessionsController < ApplicationController
  include SessionsHelper

  def new; end

  def create
    customer = Customer.find_by(email: params[:session][:email].downcase)
    if customer && customer.authenticate(params[:session][:password])
      log_in(customer)
      flash[:notice] = 'Logged in successfully'
      redirect_to home_index_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    session.delete(:customer_id)
    flash[:notice] = 'Logged out successfully'
    redirect_to home_index_path
  end
end