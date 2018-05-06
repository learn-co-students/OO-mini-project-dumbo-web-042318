class Ingredient

  attr_accessor :ingredient_name

  @@all = []

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    # Ingredient.all should return all of the ingredient instances
    @@all
  end


  def allergen?
    Allergen.all.any? do |allergen|
      allergen.ingredient == self
    end
  end

  # `Ingredient.most_common_allergen` should return the ingredient instance
  # that the highest number of users are allergic to
  def self.most_common_allergen
    # Note: Not using Array#inject
    ingredient_tally = Hash.new(0)

    Allergen.all.each do |allergen|
      ingredient = allergen.ingredient
      ingredient_tally[ingredient] += 1
    end

    ingredient_tally.max_by { |_, v| v }.first
  end

end
