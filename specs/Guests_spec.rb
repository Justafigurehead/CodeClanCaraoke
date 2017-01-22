require('minitest/autorun')
require('minitest/rg')
require_relative('../Guests')

class TestGuest < MiniTest:: Test

  def setup
    @connor = Guest.new("Connor", "Hooked on a feeling", 100)
    @marlene = Guest.new("Marlene", "With fake song", 25) 
    @jack = Guest.new("Jack", "Song 2", 50)
  end

  def test_remove_money
    assert_equal(40, @jack.charge_fee(){|customer_money| customer_money - 10})
  end


end 