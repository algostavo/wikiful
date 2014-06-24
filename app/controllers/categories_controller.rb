class CategoriesController < ApplicationController
  def index
    @categories = Category.order(updated_at: :desc).all
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
end