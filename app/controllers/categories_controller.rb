class CategoriesController < ApplicationController
  respond_to :html, :xml
  def show
    @category = Category.find_by_permalink(params[:permalink])
    respond_with @category
  end
end
