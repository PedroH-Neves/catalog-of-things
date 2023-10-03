class Label
  def initialize(title, color)
    @title = title
    @color = color
    @items = []
    @id = rand(1..1000)
  end
end