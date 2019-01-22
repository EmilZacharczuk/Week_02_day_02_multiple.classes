class River


attr_reader  :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(fish)
    return @fish << fish
  end

  def remove_fish
    return @fish.pop
  end

  def fish_how_many
    return @fish.length
  end

  def empty_river
    return @fish = []
  end
end
