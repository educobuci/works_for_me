class FeedsController < ApplicationController
  respond_to :atom
  layout false
  
  def index    
    @posts = Post.feed
    @title = "Works for me"
    @updated = @posts.first.created_at unless @posts.empty?
    
    respond_with @posts, @title, @updated
  end
end