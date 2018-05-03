class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    counts = Hash.new(0)
    Allergen.all.each do |allergy|
      counts[allergy.ingredient] += 1
    end
    counts.max_by{ |k,v| v }[0]
  end

end
