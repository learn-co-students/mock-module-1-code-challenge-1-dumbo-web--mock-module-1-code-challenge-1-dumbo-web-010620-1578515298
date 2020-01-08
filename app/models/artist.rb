class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def self.total_experience
    total = 0 
    Artist.all.each do |n|
      total += n.years_experience
    end 
    total 
  end 

  def self.most_prolific
    
  end 


  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery)
  end 

end
