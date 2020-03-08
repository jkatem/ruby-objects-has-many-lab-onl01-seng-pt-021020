require 'pry'

class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end 
  end

  def self.all
    @@all
  end

  def artist_name


  end

end
