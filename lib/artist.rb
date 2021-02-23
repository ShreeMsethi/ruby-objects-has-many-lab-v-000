# require "pry"
class Artist
  
  attr_accessor :name 
  
  # @@song_count = []
  
  def initialize(name)
    @name = name
  end
  
  # def songs
  #   @songs
  #   # add_song_by_name(song_name)
  # end
  
  # def songs
  #   Song.all
  # end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
# <<<<<<< HEAD
#     # @songs << songs
# =======
#     # @songs << song
# >>>>>>> 655a26965761b86fd02eed9cd4dc189f28f6f67a
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
      Song.all.length
  end
  
end















