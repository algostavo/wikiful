class CategoriesController < ApplicationController
  def index
    @categories = Category.order(updated_at: :asc).all
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
end