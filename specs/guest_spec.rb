require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup
  @guest = Guest.new("Phil", "Collins", 35)
end

end
