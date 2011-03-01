class Author < ActiveRecord::Base
  has_many :posts
  
  def self.authenticate(email, pass)
    where(:email => email, :password => pass).first
  end
end
