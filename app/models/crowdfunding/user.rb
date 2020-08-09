class User
  attr_accessor :name

  @@all = []

  ###### INSTANCE METHODS ######

  def initialize(name)
    @name = name
    @@all << self
  end

  def projects
    Project.all.select do |project|
      project.user == self
    end
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.user == self
    end
  end

  def projects_pledged_to
    self.pledges.map do |pledge|
      pledge.project
    end
  end

  ###### CLASS METHODS ######

  def self.highest_pledge
    amounts = Pledge.all.map do |pledge|
      pledge.amount
    end.max
    Pledge.all.find do |pledge|
        pledge.amount == amounts     
    end.user
  end

  def self.multi_pledger
    User.all.select do |user|
      user.pledges.count > 1
    end
  end

  def self.project_creator
    Project.all.map.uniq do |project|
      project.user
    end
  end

  def self.all
    @@all
  end

end