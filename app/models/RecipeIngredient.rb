class RecipeIngredient
  attr_accessor :recipe, :ingredient

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
  # RecipeIngredient.all should return all of the RecipeIngredient instances
    @@all
  end

end
