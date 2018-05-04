##### RecipeCard.all should return all of the RecipeCard instances
#### RecipeCard#date should return the date of the entry
#### RecipeCard#rating should return the rating (an integer) a user has given their entry
#### RecipeCard#user should return the user to which the entry belongs
#### RecipeCard#recipe should return the recipe to which the entry belongs

class RecipeCard
  attr_accessor :rating, :user
  attr_reader :date, :recipe

  @@all = []

  def initialize(user,recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
