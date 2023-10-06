class App
  def initialize
    @books = []
    @music_albums = []
    @genres = []
    @labels = []
    @authors = []
    @sources = []
  end

  def add_book
    print ''
  end

  def add_music
    puts 'Hi I am a add music'
  end

  def list_of_books
    @books.empty? ? p 'No books available' : print_books
  end

  def list_of_music
    @music_albums.empty? ? p 'No musics availiable' : print_musics
  end

  def list_of_labels
    @labels.empty? p 'No labels available' : print_labels
  end

  def list_of_genres
    @genres.empty? ? p 'No genres available' : print_genres
  end

  def list_of_authors
    @authors.empty? p 'No authors available' : print_authors
  end

  def list_of_sources
    @sources.empty? ? p 'No sources availiable' : print_sources
  end

  private

  def print_books
    @books.each do |book| 
      puts("Book: #{book.title} by #{book.author}")
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
    @authors.each {|author| puts("Author: #{author.first_name}, #{author.last_name}")}
  end

  def print_sources
    @sources.each { |source| puts("Source: #{source.name}")}
  end
end
