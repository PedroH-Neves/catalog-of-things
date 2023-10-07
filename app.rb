require './lib/helpers/book_form'
require './lib/book'
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

    @books << Book.new(
      args[:genre],
      args[:author],
      args[:source],
      args[:label],
      args[:published_date],
      args[:publisher],
      args[:cover_state]
    )

    puts 'Book created successfully'
  end

  def add_music
    puts 'Hi I am a add music'
  end

  def list_of_books
    if @books.empty?
      puts 'No books available'
    else
      print_books
    end
  end

  def list_of_music
    @music_albums.empty? ? puts { 'No musics availiable' } : print_musics
  end

  def list_of_labels
    @labels.empty? ? puts { 'No labels available' } : print_labels
  end

  def list_of_genres
    @genres.empty? ? puts { 'No genres available' } : print_genres
  end

  def list_of_authors
    @authors.empty? ? puts { 'No authors available' } : print_authors
  end

  def list_of_sources
    @sources.empty? ? puts { 'No sources availiable' } : print_sources
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
      puts("Music: #{music.title} by #{music.author}")
    end
  end

  def print_labels
    @labels.each { |label| puts("Label: #{label.title}, #{label.color}") }
  end

  def print_authors
    @authors.each { |author| puts("Author: #{author.first_name}, #{author.last_name}") }
  end

  def print_sources
    @sources.each { |source| puts("Source: #{source.name}") }
  end
end
