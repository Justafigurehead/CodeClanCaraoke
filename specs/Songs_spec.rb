require('minitest/autorun')
require('minitest/rg')
require_relative('../Songs')

class TestSongs < MiniTest::Test
  def setup
    @song_1 = Song.new("Bob Marley and the Wailers", "Could you be loved")
    @song_2 = Song.new("Counting Crows", "Mr Jones")

    @songs = [@song_1, @song_2]
  end

  def test_get_artist_name
    assert_equal("Counting Crows",@song_2.artist )
  end
 
  def test_get_song_name 
    assert_equal("Mr Jones", @song_2.title)
  end

  def test_search_for_particular_artist 
    assert_equal("Counting Crows", @songs.find_song("Counting Crows", @songs))
    
  end
  

 
end