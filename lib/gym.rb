class Gym
  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def memberships
    Membership.all.select do |inst| inst.gym == self end 
  end 
  
  def lifters
  memberships.map do |inst| inst.lifter end 
  end

  def lifters_names
  names=[]
  lifters.each do |inst| names << inst.name 
  end  
  names
  end 
  
  def lift_total
    total=0 
    lifters.map do |inst| total += inst.lift_total 
    end 
    total  
  end 
  
end
