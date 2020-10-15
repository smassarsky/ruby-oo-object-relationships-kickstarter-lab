class Project

  @@all = []

  attr_reader :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    ProjectBacker.all.select{|projectbacker| projectbacker.project == self}.map{|projectbacker| projectbacker.backer}
  end

  def self.all
    @@all
  end

end