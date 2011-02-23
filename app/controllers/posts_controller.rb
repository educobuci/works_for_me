class PostsController < ApplicationController
  respond_to :html
  
  def index
    @posts = Post.feed
    respond_with @posts
  end

  def show
    if params[:permalink] != nil
      @post = Post.find_by_permalink(params[:permalink])
    else
      @post = Post.find(params[:id])
    end
    
    @title = @post.title
    
    respond_with
  end
end
