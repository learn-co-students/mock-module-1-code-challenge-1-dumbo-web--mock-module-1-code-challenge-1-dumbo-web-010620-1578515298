class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def total_price
    all_prices = Painting.all.map do |pri|
      pri.price
    end
    all_prices.sum
  end

  def self.all
    @@all
  end

end
