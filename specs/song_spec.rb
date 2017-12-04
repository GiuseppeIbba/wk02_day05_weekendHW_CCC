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





































































#
#
#
# class TestPlaylist < MiniTest::Test
#
#   def setup
#
#   songs = [
#       {
#         title: "Kashmir",
#         artist: "Led Zeppelin"
#       },
#       {
#         title: "No one knows",
#         artist: "Queens of the stone age"
#       }
#     ]
#
#   @playlist = Playlist.new(songs)
#   end
#   #
#   # def test_find_song()
#   #   assert_equal, @playlist.song())
#   # end
#
# def test_find_song_by_title()
# assert_equal([{title: "Kashmir", artist: "Led Zeppelin"}], @playlist.find_by_title("Kashmir"))
# end
#
# def test_find_song_by_artist()
# assert_equal([{title: "No one knows",
# artist: "Queens of the stone age"}], @playlist.find_by_artist("Queens of the stone age"))
# end
#
# def test_playlist_has_songs()
# assert_equal([{title: "Kashmir", artist: "Led Zeppelin"}, {title: "No one knows", artist: "Queens of the stone age"}], @playlist.songs())
# end
#
#
#
#
#
#
#
#
# end
