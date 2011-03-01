class Admin::LoginController < AdminController
  skip_before_filter :authenticate
  
  def index
    @author = Author.new
  end
  
  def create
    email = params[:author][:email]
    pass = params[:author][:password]
    
    author = Author.where(:email => email, :password => pass).first
    
    if !author.nil?
      session[:author] = author
      redirect_to session[:request_uri]
    else
      flash[:notice] = "Email or password invalids"
      redirect_to :action => "index"
    end
  end
end