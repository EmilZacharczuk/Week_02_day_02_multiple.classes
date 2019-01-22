require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Cod")
  end

  def fish_name
    assert_equal("Cod", @fish.name)
  end


end
