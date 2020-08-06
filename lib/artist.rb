class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    self.class.all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(song, name, genre)
    Song.new(self, song, name, genre)
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
end 