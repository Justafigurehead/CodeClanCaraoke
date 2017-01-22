class Song

attr_reader :artist, :title
  def initialize(artist,title)
    @artist = artist
    @title = title
  end 

  def find_songs(artist, songs)
    found_song = @songs.find{ |song| song.artist == artist}
    return found_song
  end
end