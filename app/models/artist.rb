class Artist

 @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end
  
  def paintings 
    Painting.all.select {|paint| paint.artist == self}
  end 

  def galleries 
    self.paintings.map do |paint|
      paint.gallery
    end 
  end 

  def cities 
    self.galleries.map do |paint|
      paint.city
    end 
  end 

  def self.total_experience 
    @@all.each do |art|
      years = o
      years += art.years_experience
    end 
  end 
  
  def self.most_prolific 
    @@all.max_by {|a| (a.paintings.count / a.years_experience)}
  end 

  def create_painting(title, price, gallery) 
    new_paint = Painting.new(title, price)

    new_paint.gallery = gallery 
  end 


end
