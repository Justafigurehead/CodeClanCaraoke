class Guest

  attr_accessor :money
  attr_reader :name, :fav_song
  def initialize(name, fav_song, money)
    @name = name
    @fav_song = fav_song
    @money
  end

  def charge_fee
    return yield
  end
  
end