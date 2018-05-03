require 'pry'

class Ingredient
  attr_accessor :name

  ALL = []
#Tested Passed
  def initialize(name)
    @name = name
    ALL << self
  end
#Tested Passed
  def self.all
    ALL
  end

  def self.most_common_allergen
    # should return the ingredient instance that the highest number of users are allergic to
    allergen_counts = Allergen.all.inject(Hash.new(0)) { |allergen_counts, obj|
      allergen_counts[obj.ingredient] += 1; allergen_counts
    }

    allergen_counts.sort_by { |ingredient, count|
      count
    }.last[0]
  end
end
