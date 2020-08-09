class LocationClient
  attr_accessor :location, :client

  @@all = []

  def initialize(location, client)
    @location = location
    @client = client
    @@all << self
  end

  def self.all
    @@all
  end
  
end