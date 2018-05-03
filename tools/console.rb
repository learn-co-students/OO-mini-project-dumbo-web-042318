require_relative '../config/environment.rb'


sam = User.new("Sam")
pat = User.new("Pat")
ann = User.new("Ann")
alex = User.new("Alex")

flour = Ingredient.new("Flour")
peanuts = Ingredient.new("Peanuts")
milk = Ingredient.new("Milk")
choco = Ingredient.new("Chocolate Chips")
butter = Ingredient.new("Butter")
sugar = Ingredient.new("Sugar")

yo_bread = Recipe.new("Yogurt Bread")
chip = Recipe.new("Chocolate Chip Cookie")
pesto = Recipe.new("Pesto Pasta")
steak = Recipe.new("Steak Au Poivre")
lasagna = Recipe.new("Lasagna")

card1 = RecipeCard.new(sam, yo_bread, "05/02", 9)
card9 = RecipeCard.new(pat, yo_bread, "04/10", 9)
card10 = RecipeCard.new(ann, yo_bread, "08/02", 9)
card6 = RecipeCard.new(alex, yo_bread, "10/02", 7)
card2 = RecipeCard.new(sam, chip, "09/18", 9)
card3 = RecipeCard.new(pat, chip, "10/03", 8)
card8 = RecipeCard.new(pat, lasagna, "06/07", 3)
card4 = RecipeCard.new(pat, pesto, "10/01", 10)
card7 = RecipeCard.new(pat, steak, "12/25", 9)
card5 = RecipeCard.new(ann, lasagna, "10/03", 10)


gluten = Allergen.new(pat, flour)
butt = Allergen.new(pat, butter)
nuts = Allergen.new(alex, peanuts)
nuts2 = Allergen.new(ann, peanuts)

recipe1 = RecipeIngredient.new(chip, [butter, milk, choco, nuts])
recipe2 = RecipeIngredient.new(lasagna, [flour, butter, peanuts])



binding.pry
true
