class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # User.all should return all of the user instances
    @@all
  end

  def recipes
    # User#recipes should return all of the recipes this user has recipe cards for
    RecipeCard.all.select do |card|
      card.user == self
    end.collect do |recipes|
      recipes.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    #add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
      @mostrecent = RecipeCard.new(self, recipe, date, rating)

  end

  def declare_allergen(ingredient)
    #declare_allergen should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    Allergen.new(self, ingredient)
  end

  def allergens
    # User#allergens should return all of the ingredients this user is allergic to
    Allergen.all.select do |allergen|
      allergen.user == self
    end.collect do |allergy|
      allergy.ingredient
    end
  end

  def top_three_recipes
    # User#top_three_recipes should return the top three highest rated recipes for this user.
    RecipeCard.all.sort_by do |recipe_card|
      recipe_card.rating
    end.reverse[0...3].map do |recipe_card|
     recipe_card.recipe
    end
  end

  def most_recent_recipe
    # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
  #   RecipeCard.all.sort_by do |recipe_card|
  #     recipe_card.date
  #   end.reverse.first.recipe
  # end
    # binding.pry
    self.recipes[-1].recipe_name # also works

  # @mostrecent # also works with setting add_recipe_card to @mostrecent
  end
end
