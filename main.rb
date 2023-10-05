require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def display_options
    puts 'Please choose an option by entering a number: '
    puts '1 - List all books'
    puts '2 - List all mmusic albums'
    puts '3 - List all genres'
    puts '4 - List all labels'
    puts '5 - List all authors'
    puts '6 - List all sources'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Exit'
  end

  def handle_options(option)
    case option
    when 1
      @app.list_of_books
    when 2
      @app.list_of_music
    when 3
      @app.list_of_genres
    when 4
      @app.list_of_labels
    when 5
      @app.list_of_authors
    when 6
      @app.list_of_sources
    when 7
      @app.add_book
    when 8
      @app.add_music
    else
      puts 'Invalid option'
    end
  end
  
  def run
    display_options

    while (option = gets.chomp.to_i) != 9
      handle_options(option)
      puts ''
      display_options
    end
    puts 'Good bye!'
  end
end

main = Main.new
main.run