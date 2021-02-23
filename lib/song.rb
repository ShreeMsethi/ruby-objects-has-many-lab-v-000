# require "pry"
class Song
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    # save
    # binding.pry
  end
  
  def save # we could have implemented this save method and would have still been          correct but the lab does not ask for it and therefore we implement           @@all << self directly in our initialize method.
    @@all << self
  end  
  
  def self.all
    @@all
  end
  
  def artist_name
    # self.artist.name if self.artist != nil
    self.artist.name if artist
  end
  
end