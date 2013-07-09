class DropPublishedDateFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :published_date
  end
end
