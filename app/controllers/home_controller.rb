class HomeController < ApplicationController
  respond_to :html, :xml

  def index
    @posts = Post.order("created_at DESC").take(10);
    respond_with @posts
  end
  
end