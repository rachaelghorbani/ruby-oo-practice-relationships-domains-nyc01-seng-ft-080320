class Show
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  ##### CLASS METHODS #####

  def self.all
    @@all
  end

  ##### INSTANCE METHODS #####

  def on_the_big_screen
    Movie.all_movie_names.select do |name|
      name == self.title
    end
  end

  def actors 
    ShowActor.all.select do |show_actor|
      show_actor.show == self
    end
  end

  def characters 
    ShowCharacter.all.select do |show_character|
      show_character.show == self
    end
  end

end