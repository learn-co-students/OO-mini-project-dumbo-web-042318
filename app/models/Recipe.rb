class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end.map do |recipecard|
      recipecard.user
    end
  end

  def self.most_popular
    recipes = RecipeCard.all.map { |recipecard| recipecard.recipe }

    freq = recipes.inject(Hash.new(0)) do |hash, recipe|
      hash[recipe] += 1
      hash
    end

    recipes.max_by {|recipe| freq[recipe]}
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def ingredients
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

  def allergens
    allergen_ingredients = Allergen.all.map { |allergen| allergen.ingredient }.uniq

    self.ingredients.select do |ingredient|
      allergen_ingredients.include?(ingredient)
    end
  end

end
