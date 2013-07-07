class Recipe < ActiveRecord::Base
  belongs_to :category
  has many :ingredients

  attr_accessible :description, :published_date, :title, :category_id
end
