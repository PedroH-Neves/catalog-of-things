require './lib/helpers/book_form'
require './lib/helpers/music_form'
require './lib/book'
require './lib/music_album'
require 'pry'

class App
  attr_reader :books, :music_albums, :genres, :labels, :authors, :sources

  def initialize
    @books = []
    @music_albums = []
    @genres = []
    @labels = []
    @authors = []
    @sources = []
  end

  def add_book
    args = BookForm.user_input

    book_attributes =
      {
        genre: args[:genre],
        author: args[:author],
        source: args[:source],
        label: args[:label],
        publish_date: args[:published_date],
        publisher: args[:publisher],
        cover_state: args[:cover_state]
      }

    @books << Book.new(book_attributes)
    @genres << Genre.new(book_attributes[:genre].name)
    @labels << Label.new(book_attributes[:label].title, book_attributes[:label].color)
    @authors << Author.new(book_attributes[:author].first_name, book_attributes[:author].last_name)
    @sources << Source.new(book_attributes[:source].name)

    puts 'Book created successfully'
  end

  def add_music
    args = MusicForm.user_input

    music_attributes =
      {
        genre: args[:genre],
        author: args[:author],
        source: args[:source],
        label: args[:label],
        publish_date: args[:published_date],
        on_spotify: args[:on_spotify]
      }

    @music_albums << MusicAlbum.new(music_attributes)
    @genres << Genre.new(music_attributes[:genre].name)
    @labels << Label.new(music_attributes[:label].title, music_attributes[:label].color)
    @authors << Author.new(music_attributes[:author].first_name, music_attributes[:author].last_name)
    @sources << Source.new(music_attributes[:source].name)

    puts 'Book created successfully'
  end

  def list_of_books
    if @books.empty?
      puts 'No books available'
    else
      print_books
    end
  end

  def list_of_music
    if @music_albums.empty?
      puts 'No musics available'
    else
      print_musics
    end
  end

  def list_of_labels
    if @labels.empty?
      puts 'No labels available'
    else
      print_labels
    end
  end

  def list_of_genres
    if @genres.empty?
      puts 'No genres available'
    else
      print_genres
    end
  end

  def list_of_authors
    if @authors.empty?
      puts 'No authors available'
    else
      print_authors
    end
  end

  def list_of_sources
    if @sources.empty?
      puts 'No sources availiable'
    else
      print_sources
    end
  end

  private

  def print_books
    @books.each do |book|
      puts "Book: #{book.label.title} by #{book.author.first_name} #{book.author.last_name}\n"
      puts "Genre: #{book.genre.name}\n "
      puts "Published Date: #{book.published_date}\n"
      puts "Publisher: #{book.publisher}\n"
      puts "Cover State: #{book.cover_state}\n"
      puts "====================================================================================\n"
    end
  end

  def print_musics
    @music_albums.each do |music|
      puts "Music: #{music.label.title} by #{music.author.first_name} #{music.author.last_name}\n"
      puts "Genre: #{music.genre.name}\n "
      puts "Published Date: #{music.published_date}\n"
      puts "On Spotify: #{music.on_spotify}\n"
      puts "====================================================================================\n"
    end
  end

  def print_labels
    @labels.each { |label| puts("Label: #{label.title}, #{label.color}") }
  end

  def print_genres
    @genres.each { |genre| puts("Genre: #{genre.name}") }
  end

  def print_authors
    @authors.each { |author| puts("Author: #{author.first_name}, #{author.last_name}") }
  end

  def print_sources
    @sources.each { |source| puts("Source: #{source.name}") }
  end
end
