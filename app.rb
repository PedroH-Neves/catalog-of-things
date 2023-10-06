class App
  def initialize
    @books = []
    @music_albums = []
    @genres = []
    @labels = []
    @authors = []
    @sources = []
  end

  def list_of_books
    @books.each do |book|
      puts("Book: #{book.title} by #{book.author}")
    end
  end

  def list_of_music
    puts 'Hi I am a list of music'
  end

  def list_of_genres
    puts 'Hi I am a list of genres'
  end

  def list_of_labels
    puts 'Hi I am a list of labels'
  end

  def list_of_authors
    puts 'Hi I am a list of authors'
  end

  def list_of_sources
    puts 'Hi I am a list of sources'
  end

  def add_book
    puts 'Hi I am a add book'
  end

  def add_music
    puts 'Hi I am a add music'
  end
end
