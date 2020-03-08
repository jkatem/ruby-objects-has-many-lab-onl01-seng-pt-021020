require 'pry'

class Artist

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self # double equal bc we are testing true/false
    end
  end

  def add_song(song)
    #binding.pry
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

#binding.pry

end
