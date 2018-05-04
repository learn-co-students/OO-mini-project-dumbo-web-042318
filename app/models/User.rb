class User
  # `User.all` should return all of the user instances
  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  # `User#add_recipe_card` should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  # `User#recipes` should return all of the recipes this user has recipe cards for
  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  # `User#top_three_recipes` should return the top three highest rated recipes for this user.
  def top_three_recipes
    recipe_cards.sort_by do |recipe_card|
      recipe_card.rating
    end.reverse[0...3].map do |recipe_card|
      recipe_card.recipe
    end
  end

  # `User#most_recent_recipe` should return the recipe most recently added to the user's cookbook.
  def most_recent_recipe
    recipe_cards.sort_by do |recipe_card|
      recipe_card.date
    end.reverse.first.recipe
  end

  # `User#declare_allergen` should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  # `User#allergens` should return all of the ingredients this user is allergic to
  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.map do |allergen|
      allergen.ingredient
    end.uniq
  end
end
