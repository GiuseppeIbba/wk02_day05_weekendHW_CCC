require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup
  @guest = Guest.new("Phil", "Collins", 35)
end



def test_guest_has_a_name()
  assert_equal("Phil", @guest.name())
end

def test_guest_has_a_surname()
  assert_equal("Collins", @guest.surname())
end

def test_guest_has_a_age
  assert_equal(35, @guest.age)
end

end
