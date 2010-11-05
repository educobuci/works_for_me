class PostsController < ApplicationController
  respond_to :html
  
  def index
    respond_with @posts    
  end

  def show
    if params[:permalink] != nil
      @post = Post.find_by_permalink(params[:permalink])
    else
      @post = Post.find(params[:id])
    end
    
    respond_with @post
  end
end
