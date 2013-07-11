class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient

  validates :ingredient_id, uniqueness: { scope: :recipe_id}

  def ingredient_name_and_quantity
    "#{quantity} #{ingredient.name}"
  end

end
