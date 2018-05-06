class RecipeCard

  attr_accessor :user, :recipe, :date, :rating

  @@all = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    # RecipeCard.all should return all of the RecipeCard instances
    @@all
  end

end
