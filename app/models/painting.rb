class Painting

  attr_reader :title, :price, :artist

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price


    @@all << self
  end

  def self.all 
    @@all 
  end 

  def self.total_price
    total = 0 
    Painting.all.each do |n|
      total += n.price
    end 
    total 
  end 

end


# Painting.all

# Returns an array of all the paintings 
# Painting.total_price

# Returns an integer that is the total price of all paintings