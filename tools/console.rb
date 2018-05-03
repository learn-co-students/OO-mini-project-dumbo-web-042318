require_relative '../config/environment.rb'


lasagna_recipe = Recipe.new("lasagna")
pizza_recipe = Recipe.new("pizza")
shrimp_scampi_recipe = Recipe.new("shrimp scampi")
meatballs_recipe = Recipe.new("meatballs")

user1 = User.new("John")
user2 = User.new("Anum")
user3 = User.new("Natalie")
user4 = User.new("Tim")

lasagna_card = user1.add_recipe_card(lasagna_recipe, "today", 1)
pizza_card = user1.add_recipe_card(pizza_recipe, "today", 2)
shrimp_scampi_card = user1.add_recipe_card(shrimp_scampi_recipe, "today", 3)
meatballs_card = user1.add_recipe_card(meatballs_recipe, "today", 5)

lasagna_card2 = user2.add_recipe_card(lasagna_recipe, "today", 4.5)
pizza_card2 = user3.add_recipe_card(pizza_recipe, "today", 5)
pizza_card3 = user4.add_recipe_card(pizza_recipe, "today", 5)

lasagna_recipe.users
pizza_recipe.users

Recipe.most_popular

user1.top_three_recipes

bellpepper = Ingredient.new("bellpepper")
onion = Ingredient.new("onion")
tomato = Ingredient.new("tomato")

ingredients = [bellpepper, onion, tomato]

lasagna_recipe.add_ingredients(ingredients)
lasagna_recipe.ingredients

binding.pry
