# used for things like the contact and about pages
class SiteInfoController < ApplicationController
  def contact_us
    @site_info = SiteInfo.select(
      :customer_service_message,
      :email, :phone, :hours,
      :locations
    ).first
  end

  def about_us
    @site_info = SiteInfo.select(:description).first
  end
end