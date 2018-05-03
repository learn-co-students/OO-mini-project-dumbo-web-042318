class RecipeIngredient

  attr_reader :ingredient, :recipe

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    self.class.all << self
  end

  def self.all
    @@all
  end


end
