class PagesController < ApplicationController
  respond_to :html
  def show
    @page = Page.find_by_permalink(params[:permalink])
    @title = @page.title
    
    respond_with
  end
end
