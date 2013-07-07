class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end


  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end


  def create
    @category = Category.new(params[:category])
    redirect_to @category
  end

  def update
    @category = Category.find(params[:id])
    redirect_to @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

end
