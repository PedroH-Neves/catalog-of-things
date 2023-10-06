class Book < Item
  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    parent = super()
    parent || @cover_state == 'bad' ? true : false
  end
end
