class AdminController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
    
  private
  def authenticate
    if session[:author].nil?
      session[:request_uri] = request.request_uri
      
      if Author.count == 0
        temp = Author.create!(:email => "admin@change.local", :password => "change")
        redirect_to edit_admin_author_path(temp)
      else
        redirect_to url_for(:action => 'index', :controller => 'login') 
      end
    end
  end
end
