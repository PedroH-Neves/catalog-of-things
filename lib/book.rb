require './lib/helpers/book_form'
require_relative 'item'
require 'pry'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(attributes = {})
    super(attributes[:genre], attributes[:author], attributes[:source], attributes[:label], attributes[:publish_date])

    @publisher = attributes[:publisher]
    @cover_state = attributes[:cover_state]
  end

  def can_be_archived?
    parent = super()
    parent || @cover_state == 'bad' ? true : false
  end
end
