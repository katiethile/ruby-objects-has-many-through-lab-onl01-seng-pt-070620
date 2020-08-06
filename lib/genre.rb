class Genre 
  @@all = []
  attr_accessor :name
  
  def initalize(name)
    @name = name
    @@all << self 
end 

  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def artists
    genres.map
  end 
end 