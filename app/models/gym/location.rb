class Location
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  ###### INSTANCE METHODS ######

  def trainers
    LocationTrainer.all.select do |location_trainer|
      location_trainer.location == self
    end
  end

  def clients
    LocationClient.all.select do |location_client|
      location_client.location == self
    end
  end

  ###### CLASS METHODS ######

  def self.all
    @@all
  end

  def self.least_clients
    num_locations = Location.all.map do |location|
      location.clients.count
    end
    Location.all.find do |location|
      location.clients.count == num_locations.min
    end
  end

end