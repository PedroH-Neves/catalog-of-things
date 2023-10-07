class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(attributes = {})
    super(attributes[:genre], attributes[:author], attributes[:source], attributes[:label], attributes[:publish_date])
    @on_spotify = attributes[:on_spotify]
  end

  def can_be_archived?
    parent = super()
    parent && @on_spotify == 'yes'
  end
end
