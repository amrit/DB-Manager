class ApplicationController < ActionController::Base
  protect_from_forgery
 # before_filter :find_all_businesses


protected


def user_for_paper_trail
    admin_user_signed_in? ? current_admin_user : 'Unknown user'
end

def find_all_businesses
  @businesses = Business.all
end


end