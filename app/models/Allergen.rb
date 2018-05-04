class Allergen
  attr_reader :user, :ingredient

  # `Allergen.all` should return all of the Allergen instances
  @@all = []

  def self.all
    @@all
  end

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end
end
