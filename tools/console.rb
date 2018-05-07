require_relative '../config/environment.rb'

abdoul = User.new("Abdoul")
dan = User.new("Daniel")
bob = User.new("Bob")
mike = User.new("Mike")
jesse = User.new("Jesse")
joe = User.new("Joe")

pie = Recipe.new("Pie")
spa_water = Recipe.new("Spa Water")
grilled_cheese = Recipe.new("Grilled Cheese")
cupcake = Recipe.new("Cupcake")
muffin = Recipe.new("Muffin")
curry = Recipe.new("Curry")

flour = Ingredient.new("Flour")
water = Ingredient.new("Water")
sugar = Ingredient.new("Sugar")
salt = Ingredient.new("Salt")
filling = Ingredient.new("Filling")
bread = Ingredient.new("Bread")
cheese = Ingredient.new("Cheese")
peach = Ingredient.new("Peach")
curry_powder = Ingredient.new("Curry Powder")
icing = Ingredient.new("Icing")
lamb = Ingredient.new("Lamb")

card1 = RecipeCard.new(abdoul, pie, "08/06", 4)
card2 = RecipeCard.new(dan, grilled_cheese, "04/10", 5)
card3 = RecipeCard.new(bob, cupcake, "11/16", 5)
card4 = RecipeCard.new(mike, muffin, "01/25", 4)
card5 = RecipeCard.new(jesse, curry, "12/31", 4)
card6 = RecipeCard.new(jesse, cupcake, "03/21", 3)
card7 = RecipeCard.new(mike, grilled_cheese, "01/25", 5)
card8 = RecipeCard.new(bob, cupcake, "02/19", 2)

allergen1 = Allergen.new(mike, peach)
allergen2 = Allergen.new(jesse, icing)
allergen3 = Allergen.new(dan, salt)
allergen4 = Allergen.new(abdoul, cheese)
allergen5 = Allergen.new(bob, sugar)
allergen6 = Allergen.new(mike, curry_powder)

grilled_cheese_cheese = RecipeIngredient.new(grilled_cheese, cheese)
grilled_cheese_bread = RecipeIngredient.new(grilled_cheese, bread)
pie_flour = RecipeIngredient.new(pie, flour)
pie_filling = RecipeIngredient.new(pie, filling)
cupcake_icing = RecipeIngredient.new(cupcake, icing)
cupcake_flour = RecipeIngredient.new(cupcake, flour)
muffin_flour = RecipeIngredient.new(muffin, sugar)
muffin_peach = RecipeIngredient.new(muffin, peach)
curry_powder_curry = RecipeIngredient.new(curry, curry_powder)
curry_lamb = RecipeIngredient.new(curry, lamb)



binding.pry
true
