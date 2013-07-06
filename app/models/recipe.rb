class Recipe < ActiveRecord::Base
  belongs_to :category

  attr_accessible :description, :published_date, :title, :category_id
end
