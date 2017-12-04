require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup
  @info = [{
    name: "Phil",
    surname: "Collins",
    age: 58}]
  @guest = Guest.new(@info)
end


def test_guest_have_info()
  assert_equal(
    [{name: "Phil",
    surname: "Collins",
    age: 58}], @guest.info())
end


end
