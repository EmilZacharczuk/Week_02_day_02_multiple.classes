require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Amazon")
  end

  def fish_name
    assert_equal("Amazon", @fish.name)
  end
end
