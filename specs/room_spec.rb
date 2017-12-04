require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new({
      title: "The bard song",
      artist: "Blind Guardian"
    })
    @song2 = Song.new({
      title: "Song 2",
      artist: "Blur"
    })
    @song3 = Song.new({
      title: "Noldor",
      artist: "Blind Guardian"
    })
    @song4 = Song.new({
      title: "Nightfall",
      artist: "Blind Guardian"
    })
    @song5 = Song.new({
      title: "Down with the sickness",
      artist: "Disturbed"
    })

    playlist = [@song1, @song2, @song4]

    guests = [
      { name: "Hulk",
        surname: "Hogan",
        age: 64 },
      { name: "Ted",
        surname: "Debiase",
        age: 42 },
      { name: "Randy",
        surname: "Orton",
        age: 29 }]


    @guest4 = Guest.new({
        name: "Peter",
        surname: "Griffin",
        age: 42
        })

    guests1 = []
    playlist1 = []
      @room = Room.new("Epic Metal", guests, playlist)
      @room1 = Room.new("Pop", guests1, playlist1)
  end

  def test_room_has_a_name()
    assert_equal("Epic Metal", @room.genre())
  end

  def test_room_has_guests()
      assert_equal(3, @room.guests.size)
  end

  def test_room_has_songs()
      assert_equal(3, @room.playlist.size)
  end

  def test_room_is_available()
    assert_nil(@room.available)
  end

  def test_check_in_guest_to_room()
      check_in_guest = @guest4
      @room1.guest_in(check_in_guest)
      assert_equal(1, @room1.guests.size())
  end
end



        # def test_room_has_songs()
        #   assert_equal(0, @room.playlist.length())
        # end
        #
        # def test_room_has_guests()
        #   assert_equal(true, @room.guests.any?())
        # end
        #
        # def test_room_is_empy()
        #   refute(false, @room1.guests.any?())
        # end
        #

        #
        # def test_check_out_guest_to_room()
        #   check_out_guest = "Phil"
        #   @room.guest_out(check_out_guest)
        #   assert_equal(["Craig", "Mike"], @room.guests())
        # end
        #
        #
        # def test_can_add_song()
        #   @playlist.add_song("Blackened", "Metallica")
        #   assert_equal({title: "Blackened", author: "Metallica"}, @playlilst.find_song("Blackened", "Metallica"))
        #   all_songs = @playlist.songs()
        #   assert_equal(1, all_songs.size())
        # end
        #




        #
        #
        #   @library.add_book("1984")
        #   assert_equal({ title: "1984", rental_details: { student_name: "", date: ""} }, @library.find_book("1984"))
        #   all_books = @library.books()
        #   assert_equal(3, all_books.count())
        # end



        # def test_room_is_available()
        #   assert_equal(false, @guests.room_is_free())
        # end

        #
        # def test_room_has_guests()
        #   assert_equal(true, @room.guests.any?())
        # end



        # def test_room_is_available()
        #   assert_equal(true, @room.available)
        # end
        # def test_check_in_guest_to_room()
        #   @room.room_enter(@guest1)
        #   assert_equal("Michael Carlyle is in Rock room", @room.check_in)
        # end
        #
