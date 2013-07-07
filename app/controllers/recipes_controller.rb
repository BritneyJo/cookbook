class RecipesController < ApplicationController

  def index
    @recipes = case
    when params[:category_id].nil?
      Recipe.all
    else
      Recipe.where(category_id: params[:category_id])
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end


  def edit
    @recipe = Recipe.find(params[:id])
  end


  def create
    @recipe = Recipe.new(params[:recipe])
    redirect_to @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end
end
