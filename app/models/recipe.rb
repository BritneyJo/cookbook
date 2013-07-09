class Recipe < ActiveRecord::Base
  attr_accessible :description, :published_date, :title, :category_id, :ingredient_ids
  belongs_to :category
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  validates :title, presence: true, uniqueness: true

end
