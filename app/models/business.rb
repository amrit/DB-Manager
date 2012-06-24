class Business < ActiveRecord::Base
  belongs_to :type
  has_paper_trail
  
  include Rails.application.routes.url_helpers # neeeded for _path helpers to work in models
  
  def admin_permalink
    admin_business_path(self)
  end
  
  attr_accessible :description, :email, :facebook, :foursquare, :google, :manager, :mobile, :name, :phone, :type_id, :url, :yelp
end
