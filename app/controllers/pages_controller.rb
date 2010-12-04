class PagesController < ApplicationController
  def show
    @page = Page.find_by_permalink(params[:permalink])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end
end
