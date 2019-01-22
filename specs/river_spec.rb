require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("herring")
    @fish_2 = Fish.new("cod")
    @fish_3 = Fish.new("shark")
    @river = River.new("Amazon")
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_empty_river
    assert_equal(0, @river.fish_how_many)
  end

  def test_add_fish
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    assert_equal(3, @river.fish_how_many)
  end

  def test_remove_fish
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    assert_equal(3, @river.fish_how_many)
    @river.remove_fish
    assert_equal(2, @river.fish_how_many)
  end

  def test_empting_river
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    assert_equal(3, @river.fish_how_many)
    @river.empty_river
    assert_equal(0, @river.fish_how_many)
  end
end
