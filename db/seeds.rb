# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all

main = Category.create(name: 'Main')

Ingredient.destroy_all

pasta = Ingredient.create(name: 'Pasta', image_url: 'http://placekitten.com/200/200')
cheese = Ingredient.create(name: 'Cheese', image_url: 'http://placekitten.com/g/200/200')

# ingredients = Ingredient.create([
#   { name: 'Cool!', image_url: 'http://placekitten.com/200/200'},
#   { name: 'Pasta', image_url: 'http' }
# ])

Recipe.destroy_all

pasta_bake = Recipe.create(title: 'Pasta Bake', description: 'Lalalala', category_id: main.id, ingredient_ids: [pasta.id, cheese.id])