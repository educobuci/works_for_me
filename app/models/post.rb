class Post < ActiveRecord::Base
  
  before_save :create_permalink
  belongs_to :author
  belongs_to :category
  
  private
  
  def create_permalink
    self.permalink = title.parameterize
  end
end
