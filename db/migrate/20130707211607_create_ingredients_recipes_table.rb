class CreateIngredientsRecipesTable < ActiveRecord::Migration

  def change
    create_table :ingredients_recipes, :id => false do |t|
      t.references :ingredient, :recipe
    end
    add_index :ingredients_recipes, [:ingredient_id, :recipe_id]
  end

end
