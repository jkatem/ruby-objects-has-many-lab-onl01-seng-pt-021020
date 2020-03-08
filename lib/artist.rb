# require 'pry'
#
# class Artist
#
#   attr_accessor :artist, :name
#
#   def initialize(name)
#     @name = name
#   end
#
#   def songs
#     Song.all.select do |song|
#       song.artist == self # double equal bc we are testing true/false
#     end
#   end
#
#   def add_song(song)
#     #binding.pry
#     song.artist = self
#   end
#
#   def add_song_by_name(name)
#     new_song = Song.new(name)
#     add_song(new_song)
#   end
#
# #binding.pry
#
# end


class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
end
