class CategoriesController < ApplicationController

  def index
    categories = Category.all
    render json: { status: 201, message: 'Loaded categories', data: categories }
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: { status: 201, data: category }
    else
      render json: { status: 422, data: category.errors }
    end
  end

  private
  def category_params
    params.permit(:name)
  end
end

