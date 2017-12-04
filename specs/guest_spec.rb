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


# def test_guest_exist()
#   assert_equal([{ name: "Phil", surname: "Collins", age: 58}], @guest[]())
# end

def test_guest_have_info()
  assert_equal(
    [{name: "Phil",
    surname: "Collins",
    age: 58}], @guest.info())
end

# def test_guest_exists()
#  assert
# end

# def test_guest_has_a_surname()
#   assert_equal("Collins", @guest.surname())
# end
#
# def test_guest_has_a_age
#   assert_equal(58, @guest.age)
# end

end
