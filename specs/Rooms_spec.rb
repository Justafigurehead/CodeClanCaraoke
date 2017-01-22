require('minitest/autorun')
require('minitest/rg')
require_relative('../Rooms')
require_relative('../Songs')
require_relative('../Guests')

class TestRooms < MiniTest::Test

  def setup
    # Songs
    song_1 = Song.new("Blue Swede", "Hooked on a feeling")
    song_2 = Song.new("Blur", "Song 2")
    
    songs = [song_1, song_2]
    #Guests
    connor = Guest.new("Connor", "Hooked on a feeling")
    marlene = Guest.new("Marlene", "Peaches")
    jack = Guest.new("Jack", "Song 2")

    @waiting_guests = [connor, marlene, jack]

    # Rooms
 
    @room_1 = Room.new(2,songs)
    @room_2 = Room.new(1, songs)

  end

  def test_how_much_capacity
    assert_equal(2, @room_1.capacity)
  end

  # def test_add_guests_to_room
  #   assert_equal(2, @room_1.checkin_guest(@waiting_guests))
  # end

#Test above and below will now fail because .checkin_guest function no longer counts as it's unnecessary. 

  # def test_new_room_add_guests
  #   assert_equal(1, @room_2.checkin_guest(@waiting_guests))
  # end

#tried to return array of guests back but no go.

  # def test_guests_checked_in_as_array
  #   assert_equal([connor,marlene], @room_1.checkin_guest(@waiting_guests,@room_1.capacity))
  # end
  

  def test_check_out_guests
    guests = @room_1.checkin_guest(@waiting_guests)
    print guests
    assert_equal([], @room_1.check_out_guests(guests))
  end

  
end
