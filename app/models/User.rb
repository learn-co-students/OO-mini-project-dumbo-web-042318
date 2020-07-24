

class User

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |recipe_card|
      if recipe_card.user == self
        recipe_card.recipe
      end
    end
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.collect do |user|
      user.ingredient
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def top_three_recipes
    top3 = self.recipes.sort_by do |recipe|
      recipe.rating
    end.last(3).reverse
      top3.collect do |recipe_card|
        recipe_card.recipe
      end
  end

  def most_recent_recipe
    self.recipes[-1].recipe
  end

  def self.all
    @@all
  end


end
