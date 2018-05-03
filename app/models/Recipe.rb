

# Recipe#allergens should return all of the ingredients in this recipe that are allergens



class Recipe

  attr_accessor :name, :ingredients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipes_array = RecipeCard.all.map do |recipe_card|
      recipe_card.recipe
    end

    recipes_array.max_by do |recipe|
      recipes_array.count(recipe)
    end

  end

  def allergens
    rec_ing_array = RecipeIngredient.all.select do |rec_ingredient|
      binding.pry
      rec_ingredient.recipe == self
  
end
    rec_ing_array.map do |recipe_ing|
      recipe_ing.ingredient
    end
  end





  def recipe_card
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    self.recipe_card.map do |recipe_card|
      recipe_card.user
    end
  end

  def allergens

  end

  def ingredients
    RecipeIngredient.all.select do |ingredient|
      ingredient.recipe == self
    end
  end

  def add_ingredients(ingr_arr)
    ingr_arr.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end
end
