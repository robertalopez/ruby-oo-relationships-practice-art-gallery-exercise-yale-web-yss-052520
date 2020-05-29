class Painting
  attr_accessor :gallery 

  attr_reader :title, :price

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
    @all.each do |paint|
      price = 0 
      price += paint.price 
    end 
    return price 
  end 

end
