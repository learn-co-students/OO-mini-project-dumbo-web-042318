class Ingredient
  # `Ingredient.all` should return all of the ingredient instances
  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  def allergen?
    Allergen.all.any? { |allergen| allergen.ingredient == self }
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
