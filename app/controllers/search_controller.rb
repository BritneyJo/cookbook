class SearchController < ApplicationController

  def search
    @recipes = Recipe.search params[:search]
  end

end