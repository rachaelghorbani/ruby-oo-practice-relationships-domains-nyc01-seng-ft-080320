class Driver
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    self.rides.uniq do |ride|
      ride.passenger
    end
  end

  def self.mileage_cap(distance)
    selected = Ride.all.select do |ride|
      ride.distance > distance
    end
    selected.uniq do |instance|
      instance.driver
    end
  end

end