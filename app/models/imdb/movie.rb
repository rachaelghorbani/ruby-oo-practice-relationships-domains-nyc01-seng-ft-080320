class Movie
  attr_accessor :title, :director

  @@all = []

  def initialize(title, director)
    @title = title
    @director = director
    @@all << self
  end

  ##### CLASS METHODS #####

  def self.all
    @@all
  end

  def self.all_movie_names
    movies = Movie.all.map do |movie|
      movie
    end
    movies.map do |movie|
      movie.title
    end
  end

  def self.most_actors
    Movie.all.sort_by do |movie|
      movie.actors.size
    end.last
  end

  ##### INSTANCE METHODS #####

  def characters
    MovieCharacters.all.select do |movie_character|
      movie_character.movie == self
    end
  end

  def actors
    MovieActor.all.select do |movie_actor|
      movie_actor.movie == self
    end
  end

end