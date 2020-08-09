class Character
  attr_accessor :actor, :title

  @@all = []

  def initialize(title, actor)
    @title = title
    @actor = actor
    @@all <<self
  end

  ##### CLASS METHODS #####

  def self.all
    @@all
  end

  def self.most_appearences
    Character.all.sort_by do |character|
      character.films.size
    end.last
  end

  ##### INSTANCE METHODS #####

  def films
    MovieCharacter.all.select do |movie_character|
      movie_character.character == self
    end
  end

  def shows
    ShowCharacter.all.select do |show_character|
      show_character.character == self
    end
  end

end
