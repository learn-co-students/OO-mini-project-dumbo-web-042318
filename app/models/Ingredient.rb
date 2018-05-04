
#### Ingredient.all should return all of the ingredient instances
#### Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to

class Ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    self.all.sort do |a, b|
      b.allergic_users.count <=> a.allergic_users.count
    end.first
  end

  def recipe_ingredients
    RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.ingredient == self }
  end

  def recipes
    recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.recipe }
  end

  # the array of belongs to objects
  def allergens_ingredients
    Allergen.all.select {|allergen| allergen.ingredient == self}
  end

  def allergic_users
    allergens_ingredients.map {|allergen| allergen.user}
  end







end
