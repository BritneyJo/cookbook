class AddImageUrlToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :image_url, :string
  end
end
