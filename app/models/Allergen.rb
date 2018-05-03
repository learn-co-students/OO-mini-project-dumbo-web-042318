require 'pry'

class Allergen
  attr_reader :user, :ingredient
  ALL = []

  def self.all
    ALL
  end
#Tested Passed
  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    ALL << self
  end
  
end
