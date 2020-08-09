class Actor
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  ##### CLASS METHODS #####

  def self.all
    @@all
  end

  def self.most_characters
    Actor.all.sort_by do |actor|
      actor.characters.size
    end.last
  end

  ##### INSTANCE METHODS #####

  def characters
    Character.all.select do |character|
      character.actor == self
    end
  end

  def films
    MovieActor.all.select do |movie_actor|
      movie_actor.actor == self
    end
  end

  def shows 
    ShowActor.all.select do |show_actor|
      show_actor.actor == self
    end
  end

end