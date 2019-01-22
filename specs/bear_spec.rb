require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bear")
require_relative("../fish")

class BearTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("herring")
    @fish_2 = Fish.new("cod")
    @fish_3 = Fish.new("shark")
    @bear = Bear.new("Yogi", "Grizzli")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzli", @bear.type)
  end

  def test_empty_bear_food
    assert_equal(0, @bear.how_much_food)
  end

  def test_adding_fish
    @bear.adding_food(@fish1)
    @bear.adding_food(@fish2)
    @bear.adding_food(@fish3)
    assert_equal(3, @bear.how_much_food)
  end

end
