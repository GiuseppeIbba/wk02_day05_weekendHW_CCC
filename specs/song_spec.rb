require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup

   song_info = {
    title: "Satellite",
    artist: "Lou Reed"
      }

  @song = Song.new(song_info)
end

def test_song_has_info()
  assert_equal({
   title: "Satellite",
   artist: "Lou Reed"
     }, @song.song_info)
end

end
