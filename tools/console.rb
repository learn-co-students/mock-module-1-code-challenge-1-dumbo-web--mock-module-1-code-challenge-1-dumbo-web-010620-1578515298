require_relative '../config/environment.rb'



a1 = Artist.new("Monet", 3)
a2 = Artist.new("Rembrant", 5)
a3 = Artist.new("Mike", 9)
a4 = Artist.new("Tommy", 8)

g1 = Gallery.new("Beautiful", "Paris")
g2 = Gallery.new("Magnificent", "Montreal")
g3 = Gallery.new("Terrible", "Madrid")
g4 = Gallery.new("Passionate", "New Jersey")


Painting.new("Sand", 500, a1, g1) 
Painting.new("Sponge", 6000, a2, g2)
Painting.new("Towel", 10, a3, g3)
Painting.new("Lake", 100000, a4, g4)

a1.create_painting("Dog", 5, g4)
a2.create_painting("Cats hugging", 123, g1)



binding.pry

puts "Bob Ross rules."
