class ShowActor
  attr_accessor :show, :actor

  @@all = []

  def initialize(show, actor)
    @show = show
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

end