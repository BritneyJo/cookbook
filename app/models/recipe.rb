class Recipe < ActiveRecord::Base
  attr_accessible :description, :published_date, :title, :category_id, :recipe_image, :ingredients_recipes_attributes
  belongs_to :category
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes
  mount_uploader :recipe_image, RecipeImageUploader

  validates :title, presence: true, uniqueness: true

  accepts_nested_attributes_for :ingredients_recipes, allow_destroy: true

end
