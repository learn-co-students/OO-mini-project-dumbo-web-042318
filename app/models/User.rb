class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end.map { |recipecard| recipecard.recipe }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end

  def top_three_recipes
    RecipeCard.all.sort_by do |recipecard|
      recipecard.rating
    end.map do |recipecard|
      recipecard.recipe
    end.uniq[-3..-1]
  end

  def most_recent_recipe
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end.map do |recipecard|
      recipecard.recipe
    end[-1]
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.map { |allergen| allergen.ingredient }.uniq
  end

end
