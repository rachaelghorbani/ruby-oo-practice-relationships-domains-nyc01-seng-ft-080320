class Ingredients
  attr_accessor :name, :calories, :dessert

  @@all = []

  def initialize(name, calories, dessert)
    @name = name
    @calories = calories
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.find_all_by_name(ingredient)
    Ingredients.all.select do |ingred|
      ingred.name.include?(ingredient)
    end.map do |ingred|
      ingred.name
    end
  end

  def bakery
    self.dessert.bakery
  end

end
