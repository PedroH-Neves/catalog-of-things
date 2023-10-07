require './lib/label'
require './lib/genre'
require './lib/source'
require './lib/author'

class MusicForm
  def self.user_input
    {
      genre: genre,
      author: author,
      source: source,
      label: label,
      published_date: published_date,
      on_spotify: on_spotify
    }
  end

  def self.label
    print 'Title: '
    title = gets.chomp
    color = %w[Yellow Blue Red Purple Green Gray].sample
    Label.new(title, color)
  end

  def self.genre
    print 'Genre: '
    genre = gets.chomp
    Genre.new(genre)
  end

  def self.author
    print 'Author First Name: '
    first_name = gets.chomp
    print 'Author Second Name: '
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end

  def self.source
    print 'Source: '
    name = gets.chomp
    Source.new(name)
  end

  def self.published_date
    print 'Publish Date: '
    gets.chomp
  end

  def self.on_spotify
    print 'Is on spotify ?(yes/no): '
    gets.chomp
  end
end
