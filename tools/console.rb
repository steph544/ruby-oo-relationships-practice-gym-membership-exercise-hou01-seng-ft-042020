# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

mark=Lifter.new("Mark", 150)
elijah=Lifter.new("Elijah", 200)

gym1=Gym.new("24hour")
gym2=Gym.new("lifetime")
gym3=Gym.new("LAfitness")

m1=Membership.new(20, mark, gym1)
m2=Membership.new(40, mark, gym2)
m3=Membership.new(15, elijah, gym1)
m4=Membership.new(10, elijah, gym3)

binding.pry

puts "Gains!"
