class Client
  attr_accessor :name, :trainer
  
  @@all = []

  def initialize(name)
    @trainer = nil
    @name = name
    @@all << self
  end

  ###### INSTANCE METHODS ######

  def assign_trainer(trainer)
    self.trainer = trainer
  end

  def assign_gym(location)
    if self.trainer != nil
      LocationClient.new(location, self)
    end
  end

  def locations
    LocationClient.all.select do |location_client|
      location_client.client == self
    end
  end

  ###### CLASS METHODS ######

  def self.all
    @@all
  end

end