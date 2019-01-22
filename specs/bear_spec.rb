require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bear")

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi", "Grizzli")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzli", @bear.type)
  end

  def test_empty_food
    assert_equal(0, @bear.how_much_food)
  end

end
