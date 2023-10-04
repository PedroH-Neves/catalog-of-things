class Item
  def initialize(genre, author, source, label, publish_date)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
    @id = rand(1..1000)
  end

  def can_be_archived?
    current_date = Time.now.year
    current_date - publish_date > 10
  end

  def move_to_archive
    if can_be_archived? = true
      puts "#{@title} has been archived."
    else
      puts "#{@title} cannot be archived yet."
    end
  end
end
