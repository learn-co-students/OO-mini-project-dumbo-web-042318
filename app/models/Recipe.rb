require 'pry'

class Recipe
  attr_accessor :users, :ingredients, :allergens

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def recipe_ingredients
    RecipeIngredient.all.select { |obj|
      obj.recipe == self
    }
  end

  def ingredients=(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

  def ingredients
    self.recipe_ingredients.map { |obj|
        obj.ingredient
    }
  end

  def add_ingredients(*ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def recipe_cards
    RecipeCard.all.select { |obj|
      obj.recipe == self
    }
  end

  def self.most_popular
    self.all.sort_by { |obj|
      obj.users.count
    }.last
  end

  def users
    self.recipe_cards.map { |obj|
      obj.user
    }
  end

  def allergens
    self.ingredients.select { |ingredient|
      Allergen.all.any? { |obj|
        obj.ingredient == ingredient
      }
    }
  end

  def self.all
    ALL
  end
end
