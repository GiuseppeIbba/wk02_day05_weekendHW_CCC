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

    guests = [@guest1, @guest2, @guest3]


    @guest1 = Guest.new({
        name: "Hulk",
        surname: "Hogan",
        age: 64 })

    @guest2 = Guest.new({
        name: "Ted",
        surname: "Debiase",
        age: 42 })

    @guest3 = Guest.new({
        name: "Randy",
        surname: "Orton",
        age: 29 })

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
      assert_equal(3, @room.guests.size())
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

  def test_check_out_guest_from_room()
    check_out_guest = @guest3
    @room.guest_out(check_out_guest)
    assert_equal(2, @room.guests.size())
  end



end
