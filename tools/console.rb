require_relative '../config/environment.rb'

delish = Recipe.new("delish")
spaghetti = Recipe.new("spaghetti")
soup = Recipe.new("soup")



garlic = Ingredient.new("garlic")
tomatoe_sauce = Ingredient.new("tomatoe_sauce")
bananas = Ingredient.new("bananas")

garlic_delish = RecipeIngredient.new(delish, garlic)
bananas_delish = RecipeIngredient.new(delish, bananas)
bananas_spaghetti = RecipeIngredient.new(spaghetti, bananas)
tomatoe_pasta = RecipeIngredient.new(spaghetti, tomatoe_sauce)

john = User.new("john")
sandra = User.new("sandra")


recipe_card = RecipeCard.new(john, spaghetti, 12, 4)
recipe_card2 = RecipeCard.new(john, soup, 13, 5)
recipe_card3 = RecipeCard.new(john, delish, 15, 1)
recipe_card4 = RecipeCard.new(john, soup, 17, 2)
recipe_card5 = RecipeCard.new(sandra, soup, 11, 5)
recipe_card5 = RecipeCard.new(sandra, delish, 11, 12)
recipe_card5 = RecipeCard.new(sandra, spaghetti, 11, 0)

allergen = Allergen.new(john, bananas)
allergen2 = Allergen.new(john, garlic)
allergen3 = Allergen.new(sandra, garlic)


binding.pry

true
