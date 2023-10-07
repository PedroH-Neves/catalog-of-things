class Source
  attr_accessor :name

  def initialize(name)
    @name = name
    @items = []
    @id = rand(1..1000)
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
