class Ingredient < ActiveRecord::Base
  belongs_to :recipes

  attr_accessible :name

end
