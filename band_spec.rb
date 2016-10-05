require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../band'
require_relative '../song'
require_relative '../gig'


class TestBand < Minitest::Test

  def setup
    total_cash = 1000

    name = "Monkeys Fluff"

    members = { 
      drummer: "Tom", 
      bassist: "Adrian"
    }

    @song1 = Song.new("Smoke On The Water")
    @song2 = Song.new("Wagon Wheel")
    @song3 = Song.new("Love Shack")

    songs = [@song1, @song2]

    @band = Band.new(total_cash, members, songs, name)

    @new_gig = Gig.new("hydro", 10000)
  end

  def test_band_name
    assert_equal("Monkeys Fluff",@band.name)
  end

  def test_total_cash
    assert_equal(1000,@band.total_cash)
  end

  def test_drummer_name
    assert_equal("Tom", @band.drummer_name)
  end

  def test_bassist_name
    assert_equal("Adrian", @band.bassist_name)
  end
  
  def test_number_of_songs
    assert_equal(2, @band.number_of_songs)
  end

  def test_add_gig
    @band.add_gig(@new_gig)
    assert_equal(1, @band.gigs.length)
  end

  def test_add_fee
    assert_equal(11000, @band.add_fee(@new_gig))
  end

end