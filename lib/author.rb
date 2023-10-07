class Author
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @items = []
    @id = rand(1..1000)
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
