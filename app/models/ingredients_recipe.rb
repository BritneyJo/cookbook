class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :recipe_id
end
