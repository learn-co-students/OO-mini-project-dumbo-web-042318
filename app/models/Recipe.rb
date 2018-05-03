class Recipe
  attr_accessor :title, :ingredients

  @@all = []

  def initialize(title)
    @title = title
    # @ingredients = ingredients
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end.map do |recipe|
      recipe.user
    end
  end

  def self.most_popular
    counts = Hash.new(0)
    RecipeCard.all.each do |card|
      counts[card.recipe] += 1
    end
    counts.max_by{ |k,v| v }[0]
  end

  def ingredients
    result = RecipeIngredient.all.select do |recipe_in|
      recipe_in.recipe == self
    end.map do |recipe|
      recipe.ingredients
    end
    self.ingredients = result[0]
  end

  def add_ingredients(array)
    recipe_in = RecipeIngredient.new(self, array)
    self.ingredients = array
  end

  def allergens
    result = Allergen.all.select do |allergy|
      self.ingredients.include?(allergy.ingredient)
    end
    result.map{|int| int.ingredient}.uniq
      # item.ingredient.name == "Flour"
  end

  # def allergens
  #   Allergen.all.select do |allergy|
  #     allergy.recipe == self
  #   end.map do |ingredient|
  #     ingredient.ingredient
  #   end
  # end

end
