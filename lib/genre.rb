class Genre
  def initialize(name)
    @name = name
    @items = []
    @id = rand(1..1000)
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
