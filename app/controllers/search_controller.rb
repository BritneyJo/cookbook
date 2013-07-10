class SearchController < ApplicationController

  def index
    @q = Recipe.search(params[:q])
    if params[:q]
      @recipes = @q.result(distinct: :true)
      if @q.result.empty?
        flash[:error] = "No matches for #{params[:q][:title_or_ingredients_name_cont]}."
      else
        flash[:error] = nil
      end
    else
      @recipes=[]
    end
  end

  def search
    index
    render :index
  end

end