class Ingredient < ActiveRecord::Base
   attr_accessible :name
   has_many :recipes, through: :ingredients_recipe



  validates :name, presence: true, uniqueness: true

end
