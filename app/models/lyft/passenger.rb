class Passenger
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def self.all
    @@all
  end

  def drivers 
    self.rides.uniq do |ride|
        ride.driver
    end
  end

  def total_distance
    self.rides.map {|ride| ride.distance}.sum
  end

  def self.premium_members
    Passenger.all.select do |passenger|
      passenger.total_distance > 100.0
    end
  end

end


# - .premium_members
#   - should find all passengers who have travelled over 100 miles with the service
