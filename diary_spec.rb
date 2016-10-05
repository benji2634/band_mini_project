require 'minitest/autorun'
require 'minitest/rg'

require_relative '../gig'
require_relative '../band'
require_relative '../song'


class TestDiary < Minitest::Test
  def setup

    total_cash = 1000

    members = { 
      drummer: "Tom", 
      bassist: "Adrian"
    }

    @gig = Gig.new("hydro",10000)
    @band = Band.new(total_cash, members, songs, name)
    @song1 = Song.new("Smoke On The Water")
    @song2 = Song.new("Wagon Wheel")
    @song3 = Song.new("Love Shack")

end

  def test_add_gig
    diary = [ venue: Hydro, ]
    assert_equal("Craigmarloch Lodge", @gig.add_gig)
  end

end