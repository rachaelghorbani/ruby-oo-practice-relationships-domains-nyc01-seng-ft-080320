class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredients.all.select do |ingredient|
      ingredient.bakery == self
    end
  end

  def desserts
    Desserts.all.select do |dessert|
      dessert.bakery == self
    end
  end

  #have a .calories method in desserts that returns the total number of calories in a dessert
  #can call .desserts on self

  def average_calories
    calories = self.desserts.map {|dessert| dessert.calories}
    length = calories.length
    calories.sum.to_f / length.to_f
  end

  def shopping_list
    self.ingredients.map do |ingredient|
      ingredient.name
    end
  end


end

# - #shopping_list
#   - should return a string of names for ingredients for the bakery
