###### .all should return all of the user instances

#####   #recipes should return all of the recipes this user has recipe cards for
#####    #add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
#### #allergens should return all of the ingredients this user is allergic to
#### #top_three_recipes should return the top three highest rated recipes for this user.

##### #most_recent_recipe should return the recipe most recently added to the user's cookbook.

###### #declare_allergen should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient



class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def most_recent_recipe
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end[-1]
  end

  def top_three_recipes
    self.recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end.map do |recipe_card|
      recipe_card.recipe
    end.reverse[0..2]
  end

  def safe_recipes
    safety = Recipe.all.select do |recipe|
      recipe.allergens.none? do |ingredient|
        ingredient.allergic_users.include?(self)
      end
    end
    return safety.empty? ? "Everything will kill you, eat nothing." : safety
  end

  def recipe_cards
    RecipeCard.all.select { |card| card.user == self }
  end

  def recipes
    recipe_cards.map { |card| card.recipe }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self,recipe, date, rating)
  end

  # the array of belongs to
  def allergens_ingredients
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def allergens
    allergens_ingredients.map {|allergen| allergen.ingredient}
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

end
