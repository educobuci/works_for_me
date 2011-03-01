class Admin::LoginController < AdminController
  skip_before_filter :authenticate
  
  def create
    email = params[:author][:email]
    pass = params[:author][:password]
    
    author = Author.authenticate(email, pass)
    if !author.nil?
      session[:author] = author
      redirect_to session[:request_uri]
    else
      flash[:warning] = "Email or password invalids"
      redirect_to :action => "index"
    end
  end
  
  def destroy
    session[:author] = nil
    
    flash[:notice] = "Logout successful"
    redirect_to :action => "index"
  end
end