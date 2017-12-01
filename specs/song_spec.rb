require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
     @song = Song.new("Thunderstruck", "AC-DC")
end




def test_song_has_a_title()
  assert_equal("Thunderstruck", @song.title)
end

def test_song_has_an_author()
  assert_equal("AC-DC", @song.author)
end
end
