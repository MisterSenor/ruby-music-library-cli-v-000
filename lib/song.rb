require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def artist
    self.add_song(song)
  end 

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end

end