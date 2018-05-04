class Recipe
  # `Recipe.all` should return all of the recipe instances
  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  # `Recipe#add_ingredients` should take an array of ingredient
  # instances as an argument, and associate each of those ingredients
  # with this recipe
  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  # `Recipe#ingredients` should return all of the ingredients in this recipe
  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  # `Recipe#users` should return the user instances who have recipe cards with this recipe
  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  # `Recipe.most_popular` should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def self.most_popular
    self.all.max_by { |recipe| recipe.users.length }
  end

  # `Recipe#allergens` should return all of the ingredients in this recipe that are allergens
  def allergens
    ingredients.select do |ingredient|
      ingredient.allergen?
    end
  end
end
