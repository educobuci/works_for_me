class HomeController < ApplicationController
  respond_to :html

  def index
    @posts = Post.order("created_at DESC");
    respond_with @posts
  end
  
end