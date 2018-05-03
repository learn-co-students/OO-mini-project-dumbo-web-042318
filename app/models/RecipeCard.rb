class RecipeCard

  attr_reader :recipe, :date, :rating, :user

  @@all = []

  def initialize(recipe, date, rating, user)
    @recipe = recipe
    @date = date
    @rating = rating
    @user = user
    self.class.all << self
  end

  def self.all
    @@all
  end

end
