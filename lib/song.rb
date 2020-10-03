require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create 
    
    new_song = Song.new 
    @@all << new_song 
    new_song
  end 
  def self.new_by_name(song_name)
    new_song = Song.new 
    new_song.name = song_name 
    new_song 
  end
  def self.create_by_name(song_name)
    new_song = Song.new 
    new_song.name = song_name
    @@all << new_song 
    new_song
  end
  def self.find_by_name(song_name)
    self.all.find {|element| element.name == song_name}
  end
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)  
      self.find_by_name(song_name)
      
    else 
      self.create_by_name(song_name)
    end
  end
  def self.alphabetical
    self.all.sort_by {|element| element.name}
  end
  def self.new_from_filename(filename)
    formatted_file = filename.split(/[- ]/)
    
end
