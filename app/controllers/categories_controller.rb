class CategoriesController < ApplicationController
  respond_to :html
  
  def show
    @category = Category.find_by_permalink(params[:permalink])
    @title = @category.name
    
    respond_with
  end
end
