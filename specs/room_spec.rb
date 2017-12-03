require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup
    @song = Song.new("Blackened", "Metallica")
    @guest1 = Guest.new("Cliff", 26)
    guests = ["Phil", "Craig", "Mike"]
    @room1 = Room.new("Classic", [])
    @room = Room.new("Rock", guests)
  end


  def test_room_has_a_name()
    assert_equal("Rock", @room.genre())
  end

  def test_room_has_guests()
    assert_equal(true, @room.guests.any?())
  end

  def test_room_is_empy()
    refute(false, @room1.guests.any?())
  end
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





end
