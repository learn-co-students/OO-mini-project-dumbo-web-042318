require_relative '../config/environment.rb'
require 'pry'
require 'date'

rice_pilaf = Recipe.new("Rice Pilaf")
creme_brulee = Recipe.new("Creme Brulee")
pork_buns = Recipe.new("Pork Buns")
ding_dongs = Recipe.new("Ding Dong")
cereal = Recipe.new("Cereal")
california_roll = Recipe.new("California Roll")

rice = Ingredient.new("rice")
water = Ingredient.new("water")
carrots = Ingredient.new("carrots")
peas = Ingredient.new("peas")
sugar = Ingredient.new("sugar")
milk = Ingredient.new("milk")
pork = Ingredient.new("pork")
flour = Ingredient.new("flour")
corn = Ingredient.new("corn")
seaweed = Ingredient.new("seaweed")
crab = Ingredient.new("crab")

# should be 19 instances in RecipeIngredient
rice_pilaf.add_ingredients(rice, water, carrots, peas)
creme_brulee.add_ingredients(sugar, milk)
pork_buns.add_ingredients(pork, sugar, flour, water)
cereal.add_ingredients(corn, sugar, milk)
ding_dongs.add_ingredients(flour, milk, sugar)
california_roll.add_ingredients(rice, seaweed, crab)

chris = User.new("Chris")
john = User.new("John")
anum = User.new("Anum")

chris.declare_allergen(milk)
chris.declare_allergen(sugar)

john.declare_allergen(water)
john.declare_allergen(milk)

john.add_recipe_card(rice_pilaf, Date.new(1989,10,13), 5)
john.add_recipe_card(creme_brulee, Date.new(2018,1,13), 3)

chris.add_recipe_card(rice_pilaf, Date.new(2018,4,1), 5)
chris.add_recipe_card(cereal, Date.new(2019,4,2), 4)
chris.add_recipe_card(california_roll, Date.new(2018,4,3), 3)
chris.add_recipe_card(ding_dongs, Date.new(2018,4,1), 1)
chris.add_recipe_card(creme_brulee, Date.new(2016,5,1), 4)

anum.add_recipe_card(creme_brulee, Date.new(2017,5,1), 3)
anum.add_recipe_card(california_roll, Date.new(2018,4,1), 5)



binding.pry
true
