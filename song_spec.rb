require 'minitest/autorun'
require 'minitest/rg'
require_relative '../song'

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Smoke On The Water")
    @song2 = Song.new("Wagon Wheel")
    @song3 = Song.new("")
  end

  def test_song_has_a_name
    assert_equal("Smoke On The Water", @song1.name)
  end

  def test_audience_response
    assert_equal("air guitar", @song1.audience_response)
    assert_equal("dance", @song2.audience_response)
    assert_equal("sit and chat", @song3.audience_response)
  end

end