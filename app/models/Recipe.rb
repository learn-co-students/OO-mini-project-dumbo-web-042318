class Recipe

  attr_accessor :recipe_name

  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    # Recipe.all should return all of the recipe instances
    @@all
  end

  def self.most_popular
    # Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)

    recipe_array = RecipeCard.all.collect do |recipes|
      recipes.recipe.recipe_name
  end

    counts = Hash.new(0)
    recipe_array.each do |recipe_name|
      counts[recipe_name] += 1
     end.sort.first
    end

  # ========= also works =========
  # def self.most_popular
  #  self.all.max_by { |recipe| recipe.users.length }
  # end
  # ==============================

  def users
    # Recipe#users should return the user instances who have recipe cards with this recipe
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end.collect do |recipe|
      recipe.user
    end
  end

  def ingredients
    # Recipe#ingredients should return all of the ingredients in this recipe
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end.collect do |recipe|
      recipe.ingredient
    end
  end

  def allergens
    # Recipe#allergens should return all of the ingredients in this recipe that are allergens
    allergen_ingredients = Allergen.all.map { |allergen| allergen.ingredient }.uniq

    self.ingredients.select do |ingredient|
      allergen_ingredients.include?(ingredient)
    end
  end

  def add_ingredients(array)
    # Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
