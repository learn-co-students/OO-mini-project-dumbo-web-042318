#### Recipe.all should return all of the recipe instances
#### Recipe#users should return the user instances who have recipe cards with this recipe
#### Recipe#ingredients should return all of the ingredients in this recipe
#### Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
#### Recipe#allergens should return all of the ingredients in this recipe that are allergens

##### Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)


class Recipe
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.most_popular
    all.sort { |a,b| b.users.count <=> a.users.count }.first
  end


  def recipe_cards
    RecipeCard.all.select { |card| card.recipe == self }
  end

  def users
    recipe_cards.map { |card| card.user }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self,recipe, date, rating)
  end



  def recipe_ingredients
    RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
  end

  def ingredients
    recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ingredient}
  end

  def allergens
    self.ingredients.select {|ingredient| ingredient.allergic_users.count > 0}
  end

  def add_ingredients(*ingredients)
    ingredients.map {|ingredient| RecipeIngredient.new(self, ingredient)}
  end



end
