class Genre 
  extend Concerns::Findable
  attr_accessor :name
  @@all = Array.new
  def initialize(name)
    @name = name
    @songs = []
  end 
  def self.all
    @@all 
  end 
  def self.destroy_all
    self.all.clear
  end 
  def save 
    @@all << self 
  end 
  def self.create(name)
    genre = self.new(name)
    @@all << genre 
    genre 
  end 
  def songs 
    @songs
  end 
  def artists 
   uni =  self.songs.collect { |song| song.artist }
   uni.uniq
  end 
  
    
end 





















# class Genre 
#   extend Concerns::Findable

#   @@all = []
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#     @@all << self
#     @songs = []
#   end 
#   def self.all
#     @@all
#   end 
#   def self.destroy_all
#     self.all.clear
#   end 
#   def save 
#     self.class.all << self 
#   end 
#   def self.create(genre_name)
#     genre = Genre.new(genre_name)
#     genre.save 
#     genre
#   end 
#   def songs
#     @songs
#   end 
#   def artists 
#     artist_collection = self.songs.collect do |song|
#       song.artist
#     end 
#     artist_collection.uniq
#   end 
  
    
  
    
  

# end 