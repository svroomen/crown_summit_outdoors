# Lets customers manage their user accounts
class CustomersController < ApplicationController
  include SessionsHelper
  before_action :load_countries_and_provinces, except: :show
  before_action :check_if_logged_in, only: %i[show edit update]

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save!
    session[:customer_id] = @customer.id
    flash.now[:notice] = 'Account created successfully'
    render :show
  rescue ActiveRecord::RecordInvalid => error
    flash.now[:error] = error.message
    render :new
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes!(customer_params)
    flash.now[:notice] = 'Account information updated successfully'
    render :show
  rescue ActiveRecord::RecordInvalid => error
    flash.now[:error] = error.message
    render :edit
  end

  protected

  def customer_params
    params.require(:customer).permit(
      :first_name, :last_name, :address, :postal_code, :email, :password,
      :password_confirmation, :country_id, :province_id, :city
    )
  end

  def load_countries_and_provinces
    @countries = Country.order(:name).map { |c| [c.name, c.id] }
    @provinces = Province.order(:name).map { |p| [p.name, p.id] }
  end

  def check_if_logged_in
    unless logged_in? && (params[:id].to_i == current_customer.id)
      flash[:error] = 'Unauthorized, please login'
      redirect_to home_index_path
    end
  end
end
