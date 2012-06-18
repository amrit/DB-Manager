class Type < ActiveRecord::Base
  attr_accessible  :category
  has_many :businesses
  
  def to_s
    category
  end
end
