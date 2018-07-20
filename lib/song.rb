class Song
  attr_accessor :artist, :name
  @@all = []
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
  end

# <<<<<<< HEAD
  # def self.new_by_filename(filename)
  #   name = filename.split(' - ')[1]
  #   artist = filename.split(' - ')[0]
  #
  #   song = self.new(name)
  #   song.artist_name = Artist.new(artist)
  #   song
  # end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
# =======
  def self.new_by_filename(filename)
    name = filename.split(' - ')[1]
    artist = filename.split(' - ')[0]

    song = self.new(name)
<<<<<<< HEAD
    song.artist = Artist.find_or_create_by_name(artist)
    song.save
    song
=======
    song.artist = Artist.new(artist)
>>>>>>> 7803c85d9f7715aea8e65c8a06ee435e976f63ec
# >>>>>>> 3d6956dade336b1fc9bb1b6c6d27dd483124fe7e
  end
  
  
end
