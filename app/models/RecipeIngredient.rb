class RecipeIngredient
  # `RecipeIngredient#recipe` should return the recipe instance
  # `RecipeIngredient#ingredient` should return the ingredient instance
  attr_reader :recipe, :ingredient

  # `RecipeIngredient.all` should return all of the RecipeIngredient instances
  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end
end
