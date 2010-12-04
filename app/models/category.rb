class Category < ActiveRecord::Base
  has_many :posts
  before_save :create_permalink
  
  def to_s
    name
  end
  
  def create_permalink
    self.permalink = name.parameterize
  end
end
