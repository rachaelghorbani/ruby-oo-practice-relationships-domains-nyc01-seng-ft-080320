class Desserts
  attr_accessor :bakery, :name

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredients.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
    self.ingredients.map {|ingredient| ingredient.calories}.sum
  end

end