class Room

attr_reader :capacity, :playlist, :guests_checked_in
  
  def initialize(capacity_for_guests,songs)
    @playlist = songs
    @capacity = capacity_for_guests
    @guests_checked_in = Array.new
  end

  def playlist_count()
    return @playlist.size
  end

  def checkin_guest(new_guests)
    @guests_checked_in = new_guests.take(@capacity)

    # return @guests_checked_in.count
    # print @guests_checked_in - QUESTION: Why is my array returning [#<Guest:0x007f84fd808d68 @name="Connor", @fav_song="Hooked on a feeling">, #<Guest:0x007f84fd808cf0 @name="Marlene", @fav_song="Peaches">] and not the variable names??

  end

  def check_out_guests(guests_checking_out)
     guests_checking_out.clear
  end
end