require_relative '../config/environment.rb'

# users
travis = User.new("travis")
mike = User.new("mike")
tim = User.new("tim")

# recipes
# name convent = recipe(singular)
cookies = Recipe.new("Cookies")
cake = Recipe.new("Cake")
quiche = Recipe.new("Quiche")
pizza = Recipe.new("Pizza")

# recipe cards
# name convent = recipe(singular)_card
travis_cookies = RecipeCard.new(travis, cookies, 'may 1', 9)
mike_cookies = RecipeCard.new(mike, cookies, 'jul 1', 6)
tim_cookies = RecipeCard.new(tim, cookies, 'march 1', 3)
mike_cake = RecipeCard.new(mike, cake, 'feb 1', 7)
travis_cake = RecipeCard.new(travis, cake, 'feb 1', 7)
travis_quiche = RecipeCard.new(travis, quiche, 'oct 1', 1)
travis_pizza = RecipeCard.new(travis, pizza, 'jan 1', 10)


# ingredients

eggs = Ingredient.new("eggs")
choco_chips = Ingredient.new("chocolate chips")
cheese = Ingredient.new("cheese")
flour = Ingredient.new("flour")
milk = Ingredient.new("milk")
sugar = Ingredient.new("sugar")


# recipe ingredients
# name convent = recipe_ingredient
pizza_cheese = RecipeIngredient.new(pizza,cheese)
cookies_eggs = RecipeIngredient.new(cookies, eggs)
cake_eggs = RecipeIngredient.new(cake, eggs)
cookies_choco_chips = RecipeIngredient.new(cookies, choco_chips)
quiche_cheese = RecipeIngredient.new(quiche, cheese)

# allergens
# name convent = user_allergen(which is an ingredient)
travis_sugar = Allergen.new(travis,sugar)
travis_eggs = Allergen.new(travis,eggs)
travis_cheese = Allergen.new(travis, cheese)
mike_milk = Allergen.new(mike,milk)
tim_milk = Allergen.new(tim,milk)



binding.pry
