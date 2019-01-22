class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def roar
    return "Urghhhh!"
  end

  def how_much_food
    return @food.length
  end

  def adding_food(fish)
    return @food << fish
  end

  def take_fish_from_river(river)
    for fish in river.fish()
      adding_food(fish)
    end
  river.empty_river
  end
end
