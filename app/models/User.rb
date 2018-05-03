require 'pry'

class User
  attr_reader :name
  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    ALL << self
  end

#Tested Passed
  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

#Tested Passed
  def recipe_cards
    RecipeCard.all.select do |obj|
      obj.user == self
    end
  end

#Tested Passed
  def recipes
    self.recipe_cards.map do |obj|
      obj.recipe
    end
  end

#Tested Passed
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

#Tested Passed
  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end


  def top_three_recipes
    array = self.recipe_cards.sort_by { |obj|
      obj.rating
    }.reverse[0..2]

    array.map { |obj|
      obj.recipe
    }
  end

  def most_recent_recipe
    self.recipe_cards.sort_by { |x| x.date}.last.recipe
  end

end
