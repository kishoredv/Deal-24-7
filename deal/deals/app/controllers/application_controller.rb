class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :is_admin?
  def is_admin?
    puts current_user
    current_user.admin==1
  end
  
end
