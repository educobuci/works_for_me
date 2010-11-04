class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_side_menu_data, :load_main_menu_data
  
  private
  
  def load_side_menu_data
    @categories = Category.order("name")
  end
  
  def load_main_menu_data
    @pages = Page.all
  end
end
