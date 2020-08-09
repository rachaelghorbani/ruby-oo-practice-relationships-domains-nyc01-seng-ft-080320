class Project
  attr_accessor :name, :user, :pledge_goal, :amount_raised

  @@all = []

  ###### INSTANCE METHODS ######

  def initialize(name, user, pledge_goal)
    @name = name
    @user = user
    @pledge_goal = pledge_goal
    @amount_raised = 0
    @@all << self
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.project == self
    end
  end

  def uniq_backers
    self.pledges.map.uniq do |pledge|
      pledge.user
    end
  end

  ###### CLASS METHODS ######

  def self.no_pledges
    Project.all.select do |project|
      project.amount_raised == 0
    end
  end

  def self.above_goal
    Project.all.select do |project|
      project.amount_raised >= project.pledge_goal
    end
  end

  def self.most_backers
    Project.all.sort_by do |project|
      project.uniq_backers.size
    end.last
  end

  def self.all
    @@all
  end

end