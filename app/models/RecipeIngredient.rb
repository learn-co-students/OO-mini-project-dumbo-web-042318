require 'pry'

class RecipeIngredient
  attr_accessor :recipe, :ingredient

  ALL = []
#Tested Passed
  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    ALL << self
  end
#Tested Passed
  def self.all
    ALL
  end
end
