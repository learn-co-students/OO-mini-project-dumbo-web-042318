require_relative '../config/environment.rb'

## seed user-recipe relationship
100.times do
  User.new
end

100.times do
  Recipe.new
end

User.all.each do |user|
  random_date = Time.now + (rand(-10..50) * 86400)
  random_rating = rand(1..100)
  random_recipe = Recipe.all.sample

  user.add_recipe_card(random_date, random_rating, random_recipe)
end

user_many_recipes = User.all.sample
user_recipe_counter = 0

while user_recipe_counter < 5 do
  random_date = Time.now + (rand(-10..50) * 86400)
  random_rating = rand(1..100)
  random_recipe = Recipe.all.sample

  unless random_recipe.users.include?(user_many_recipes)
    user_many_recipes.add_recipe_card(random_date, random_rating, random_recipe)
    user_recipe_counter += 1
  end
end


## seed recipe-ingredient relationship
300.times do
  Ingredient.new
end

Recipe.all.each do |recipe|
  recipe.add_ingredients(Ingredient.all.sample(rand(3..10)))
end

## seed user-ingredient relationship
User.all.sample(rand(0..User.all.length)).each do |user|
  user.declare_allergen(Ingredient.all.sample)
end

user_many_allergens = User.all.sample

rand((Ingredient.all.length / 2)..Ingredient.all.length).times do |i|
  user_many_allergens.declare_allergen(Ingredient.all.sample)
end


binding.pry
