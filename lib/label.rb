class Label
  attr_accessor :title, :color

  def initialize(title, color)
    @title = title
    @color = color
    @items = []
    @id = rand(1..1000)
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
