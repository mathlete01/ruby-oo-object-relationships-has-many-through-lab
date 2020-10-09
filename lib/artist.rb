require 'pry'

class Artist

  attr_accessor :name, :songs, :genre, :artist

  
  @@all = [] #The Artist class needs a CLASS VARIABLE @@all that begins as an empty array
  

  def initialize(name) #An artist is initialized with a name...
    @name = name
    @songs
    @genre
    @artist
    @@all << self #... and is saved in the @@all array.
  end

  def new_song(name, genre) #The Artist class needs an INSTANCE METHOD, #new_song, that takes in an argument of a name and genre creates a new song. 
    Song.new(name, self, genre)
    #self.new_song.genre = genre
    #self.new_song.artist = self #That song should know that it belongs to the artist.
  end


  def songs #The Artist class needs an INSTANCE METHOD, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    output = [] 
    Song.all.each do |n|
      if n.artist == self
        output << n
      end
    end
    output
  end


  def genres #The Artist class needs an INSTANCE METHOD, #genres that iterates over that artist's songs and collects the genre of each song.
  output  = []
    Song.all.each do |n|
      #binding.pry
      if n.artist == self
        output << n.genre
      end
    end
    output
  end

  
  def self.all #The Artist class needs a class method .all that lists each artist in the class variable
    @@all
  end

  #Pry.start(binding) 
end