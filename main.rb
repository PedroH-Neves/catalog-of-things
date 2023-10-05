require_relative 'app'

class Main
  def initialize
    @app = App.new
    @menu = {
      1 => 'list_of_books',
      2 => 'list_of_music',
      3 => 'list_of_genres',
      4 => 'list_of_labels',
      5 => 'list_of_authors',
      6 => 'list_of_sources',
      7 => 'add_book',
      8 => 'add_music'
    }
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
    when 1..8
      @app.send(@menu[option])
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
