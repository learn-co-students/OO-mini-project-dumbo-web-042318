require 'pry'

class RecipeCard
  attr_reader :user, :recipe, :date, :rating
  ALL = []

#Tested Passed
  def self.all
    ALL
  end

#Tested Passed
  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self
  end



end
