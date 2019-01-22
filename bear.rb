class Bear
attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def how_much_food
    return @food.length
  end
end
