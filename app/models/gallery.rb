class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all 
    @@all
  end 

  def paintings 
    Painting.all.select{|paint| paint.gallery == self}
  end 
  
  def artists 
    self.paintings.map do |paint|
      paint.artist
    end 
  end 

  def artist_names
    self.artists.map do |art|
      art.name 
    end 
  end 

  def most_expensive_painting
    @@all.max_by{|paint| paint.price}
  end 
 
end
