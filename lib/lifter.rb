class Lifter
  attr_reader :name, :lift_total

  @@all=[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def memberships
    Membership.all.select do |x| x.lifter == self 
    end 
  end 

  def gyms 
    memberships.map do |x| x.gym end 
  end 

  def self.lift_total
    total=0 
    @@all.map do |inst| total += inst.lift_total end 
    average = total/@@all.count
    average
  end 

  def gym_costs
    total = 0
    memberships.map do |inst| total += inst.cost end 
    total 
  end 

  def self.all
    @@all 
  end
  
  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  
end
