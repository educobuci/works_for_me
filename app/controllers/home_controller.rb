# coding: utf-8
class HomeController < ApplicationController
  respond_to :html, :xml
  
  def index
    @home = true
    @description = "Dicas, tutoriais e notícias sobre desenvolvimento e tecnologia da informação"
    @posts = Post.order("created_at DESC").take(10)
    respond_with @posts
  end  
end