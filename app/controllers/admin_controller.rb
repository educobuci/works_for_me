class AdminController < ActionController::Base
  USER_ID = "dudu"
  PASSWORD = "q1w2e3"
  
  protect_from_forgery
  before_filter :authenticate
    
  private
  def authenticate
    authenticate_or_request_with_http_basic do |id, password| 
      id == USER_ID && password == PASSWORD
    end
  end
end
