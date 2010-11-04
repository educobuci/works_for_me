class Page < ActiveRecord::Base
  before_save :create_permalink
  
  def create_permalink
    self.permalink = title.parameterize
  end
end
