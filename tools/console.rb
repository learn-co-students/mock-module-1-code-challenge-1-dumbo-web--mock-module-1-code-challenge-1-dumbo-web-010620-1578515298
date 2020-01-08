require_relative '../config/environment.rb'

artist = Artist.new("Jack", 17)
artist2 = Artist.new("Rachel", 5)
artist3 = Artist.new("Jack", 23)

gallery = Gallery.new("Guggenheim", "New York City")
gallery2 = Gallery.new("Louvre", "Paris")
gallery3 = Gallery.new("British Musuem", "London")

painting = Painting.new("C'est la vie", 500_000)
painting2 = Painting.new("J'a la delle ", 640_000)
painting3 = Painting.new("George Washington", 7_235_000)

binding.pry

puts "Bob Ross rules."
# Artist -<Paintings>- Galleries