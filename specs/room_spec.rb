require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")

class TestRoom < MiniTest::Test

  def setup

    @room = Room.new("Rock" , 3)
  end



  def test_room_has_a_name()
    assert_equal("Rock", @room.genre())
  end

  def test_room_has_a_room_number()
    assert_equal(3, @room.room_number)
  end
end
