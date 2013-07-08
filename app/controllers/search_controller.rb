class SearchController < ApplicationController

  def search
    @recipes = Recips.search params[:search]
  end

end