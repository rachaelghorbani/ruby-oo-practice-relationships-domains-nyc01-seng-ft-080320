class Ride
  attr_accessor :distance, :passenger, :driver

  @@all = []

  def initialize(distance, passenger, driver)
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    arr_of_distance = Ride.all.map do |ride|
      ride.distance
    end
    length = arr_of_distance.length
    arr_of_distance.sum / length
  end
end
