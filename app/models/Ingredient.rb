class Ingredient

attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ingredients = Allergen.all.map { |allergen| allergen.ingredients }

    freq = ingredients.inject(Hash.new(0)) do |hash, ingredient|
      hash[ingredient] += 1
      hash
    end

    ingredients.max_by {|ingredient| freq[ingredient]}
  end

end
