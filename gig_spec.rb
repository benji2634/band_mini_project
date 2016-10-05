require 'minitest/autorun'
require 'minitest/rg'
require_relative '../gig'

class TestGig < Minitest::Test

  def setup 
    venue = "Hydro"
    fee = 10000
    @gig = Gig.new(venue, fee)
  end

  def test_get_venue_name
    assert_equal("Hydro", @gig.venue)
  end

  def test_get_fee_amount
    assert_equal(10000, @gig.fee)
  end

end