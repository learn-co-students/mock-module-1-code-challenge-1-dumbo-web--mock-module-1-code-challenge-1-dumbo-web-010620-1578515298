class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

   def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @titile=title
    @price=price
    @@all << self
  end
  

  def self.all
    @@all 
  end
end
