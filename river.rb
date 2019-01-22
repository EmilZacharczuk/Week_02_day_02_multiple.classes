class River

attr_reader  :name

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

end
