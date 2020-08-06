class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def songs 
    Song.
  end 
end 