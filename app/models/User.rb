class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |card|
      card.user == self
    end.map do |recipe|
      recipe.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
     card = RecipeCard.new(self, recipe, date, rating)
  end

  def allergens
    Allergen.all.select do |allergy|
      allergy.user == self
    end.map do |ingredient|
      ingredient.ingredient
    end
  end

  def declare_allergen(ingredient)
    allergy = Allergen.new(self, ingredient)
  end

  def top_three_recipes
    result = RecipeCard.all.select do |card|
      card.user == self
    end.sort_by{ |recipe| recipe.rating }.reverse
    result[0..2].map do |recipe|
      recipe.recipe
    end
  end

  def most_recent_recipe
    result = RecipeCard.all.select do |card|
      card.user == self
    end.sort_by{ |recipe| recipe.date }.reverse
    result[0].recipe
  end

end
