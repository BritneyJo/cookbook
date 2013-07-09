# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all

c1 = Category.create(name: 'Appetizer')
c2 = Category.create(name: 'Breakfast')
c3 = Category.create(name: 'Main')
c4 = Category.create(name: 'Dessert')

Ingredient.destroy_all

i1 = Ingredient.create(name: 'Bowtie Pasta', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK78gBzOLyM-VK7-jMup7QJodd4E28qC7o7Nq2Oh7db2I1t-l7')
i2 = Ingredient.create(name: 'Parmesan Cheese', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzozdsAnWZ7GxTzWuPoco80rnN3ocW7T02Lu4DeQu9oI7RImEORA')
i3 = Ingredient.create(name: 'Salt', image_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRcbQ6iN1WwaK6vcGhgk4wIXQMJfjI3_SD-P3EfIHiGWr1QaTZDig')
i4 = Ingredient.create(name: 'Pepper', image_url: 'http://www.bigoven.com/uploads/groundpepper.jpg')

Recipe.destroy_all

r1 = Recipe.create(title: 'Spring Pasta', description: 'instructions go here!', category_id: c3.id, ingredient_ids: [i1.id, i2.id, i3.id, i4.id])
r2 = Recipe.create(title: 'Blueberry Pancakes', description: 'instructions go here!', category_id: c2.id, ingredient_ids: [i3.id])