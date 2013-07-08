
ActiveRecord::Schema.define(:version => 20130707211607) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients_recipes", :id => false, :force => true do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  add_index "ingredients_recipes", ["ingredient_id", "recipe_id"], :name => "index_ingredients_recipes_on_ingredient_id_and_recipe_id"

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "published_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "category_id"
  end

end
