class Admin::LoginController < AdminController
  def index
  end
  
  def login (email, password)
    author = Author.find(:email => email, :password => password)
    
    if author != nil
      render :text => "successs"
    else
      render :text => "fail"
    end
  end
end