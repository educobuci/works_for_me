class Post < ActiveRecord::Base
  before_save :create_permalink
  belongs_to :author
  
  private
  
  def create_permalink
    self.permalink = title.parameterize
  end
end
