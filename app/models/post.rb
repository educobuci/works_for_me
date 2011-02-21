class Post < ActiveRecord::Base
  
  before_save :create_permalink
  belongs_to :author
  belongs_to :category
  
  scope :feed, :order => 'created_at DESC'
  
  private
    def create_permalink
      self.permalink = title.parameterize
    end
  
end
