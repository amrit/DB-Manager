class Business < ActiveRecord::Base
  belongs_to :type
  
  
  attr_accessible :description, :email, :facebook, :foursquare, :google, :manager, :mobile, :name, :phone, :type_id, :url, :yelp
end
