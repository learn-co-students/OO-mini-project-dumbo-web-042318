#### RecipeIngredient.all should return all of the RecipeIngredient instances
#### RecipeIngredient#ingredient should return the ingredient instance
#### RecipeIngredient#recipe should return the recipe instance

class RecipeIngredient
  attr_accessor :ingredient, :recipe

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end
