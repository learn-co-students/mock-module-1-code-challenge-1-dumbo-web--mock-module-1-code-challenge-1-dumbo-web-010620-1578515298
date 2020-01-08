require_relative '../config/environment.rb'

art1 = Artist.new("van gough", 20)
art2 = Artist.new("de vinci", 25)
art3 = Artist.new("Joel", 30)

gal = Gallery.new("New York musuem", "New York City")
gal1 = Gallery.new("crossroads gallery", "ontario, ny")
gal2 = Gallery.new("binger gallery", "San diego")

pain = Painting.new("casa blanca", 4500, art1, gal)
pain1  = Painting.new("Daddy long legs", 2000, art1, gal)
pain1  = Painting.new("Daddy", 200, art2, gal2)
pain1  = Painting.new("elephante grand", 2900, art2, gal1)
pain1  = Painting.new("Roach", 2200, art3, gal2)
pain1  = Painting.new("Rat trap", 2210, art1, gal2)
pain1  = Painting.new("Rodent", 2010, art2, gal1)



binding.pry

puts "Bob Ross rules."
