class Trainer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  ###### INSTANCE METHODS ######

  def clients
    Client.all.select do |client|
      client.trainer == self
    end
  end

  def locations
    judy = LocationTrainer.all.select do |location_trainer|
      location_trainer.trainer == self
    end
  end

  ###### CLASS METHODS ######

  def self.all
    @@all
  end

  def self.most_clients
    most_clients = Trainer.all.map do |trainer|
      trainer.clients.count
    end
    Trainer.all.find do |trainer|
      trainer.clients.count == most_clients.max
    end
  end

end