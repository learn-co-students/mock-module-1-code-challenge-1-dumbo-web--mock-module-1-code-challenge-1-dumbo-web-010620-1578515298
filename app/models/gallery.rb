class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    all_of_paintings = Painting.all.select do |paint|
      paint.gallery.name == self.name
    end
    all_of_paintings
  end

  def artists
    all_of_paintings = Painting.all.select do |art|
      art.gallery.name == self.name
    end
    all_art = all_of_paintings.map do |all_pain|
      all_pain.artist
    end
    all_art
  end

  def artist_names
    all_of_paintings = Painting.all.select do |art|
      art.gallery.name == self.name
    end
    all_art = all_of_paintings.map do |all_pain|
      all_pain.artist.name
    end
    all_art
  end

  def most_expensive_painting
    all_of_paintings = Painting.all.select do |art|
      art.gallery.name == self.name
    end
    prices = all_of_paintings.map do |one_paint|
      one_paint.price
    end
    biggest_price = prices.max 
    
    instance_of_price = Painting.all.find do |pin|
      pin.price == biggest_price
    end
    instance_of_price
  end

  def self.all
    @@all
  end

end
