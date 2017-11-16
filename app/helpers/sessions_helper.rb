module SessionsHelper
  def log_in(customer)
    session[:customer_id] = customer.id
  end

  def current_customer
    @current_customer ||=
      Customer.includes(:province, :country).where(
        id: session[:customer_id]
      ).first
  end

  def logged_in?
    !current_customer.nil?
  end
end