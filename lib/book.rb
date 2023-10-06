class Book < Item
  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    parent = super()
    if parent || @cover_state == 'bad'
      true
    else
    false
  end
end
