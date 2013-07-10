class IngredientsController < ApplicationController
load_and_authorize_resource

  def index
    @ingredients = Ingredient.order('name ASC')
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.save
    redirect_to @ingredient
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
  @ingredient = Ingredient.find(params[:id])
  @ingredient.update_attributes(params[:ingredient])
  redirect_to @ingredient
end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end


end
