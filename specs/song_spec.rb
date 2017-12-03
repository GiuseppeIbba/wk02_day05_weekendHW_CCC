require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestPlaylist < MiniTest::Test

  def setup

  songs = [
      {
        title: "Kashmir",
        artist: "Led Zeppelin"
      },
      {
        title: "No one knows",
        artist: "Queens of the stone age"
      }
    ]


  @playlist = Playlist.new(songs)
  end


def test_playlist_has_songs()
assert_equal([{title: "Kashmir", artist: "Led Zeppelin"}, {title: "No one knows", artist: "Queens of the stone age"}], @playlist.songs())
end







end
