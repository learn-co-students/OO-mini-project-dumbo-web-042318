# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to


class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    
  end

  def self.all
    @@all
  end


end
