class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self 
  end

  def paintings
    one_paint = Painting.all.select do |pain|
      pain.artist.name == self.name
    end
    title_paint = one_paint.map do |all_names|
      all_names.title
    end
    title_paint
  end

  def galleries
    one_paint = Painting.all.select do |pain|
      pain.artist.name == self.name
    end
     gal_paint = one_paint.map do |all_names|
      all_names.gallery.name
    end
    gal_paint
  end

  def cities
    one_paint = Painting.all.select do |pain|
      pain.artist.name == self.name
    end
    gal_cities = one_paint.map do |all_paint|
      all_paint.gallery.city
    end
    gal_cities
  end

  def self.total_experience
    exp_arr = Artist.all.map do |exp|
      exp.years_experience
    end
    exp_arr
  end

  def self.most_prolific
    all_pain = Painting.max_by do |pin|
      pin.count(pin)
    end
    all_pain.artist.name
  end

  def creating_new_painting
    Painting.new("Arched Monkey", 4523, art3, gal)
  end

  def self.all
    @@all
  end

end
