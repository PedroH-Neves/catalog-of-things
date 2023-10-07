require_relative 'app'
require './lib/helpers/options'
require 'pry'

class Main
  include Options

  def initialize
    @app = App.new
    @menu = menu_options
  end

  def handle_options(option)
    case option
    when 1..8
      chosen_item = @menu[option]
      @app.send(chosen_item)
    else
      puts 'Invalid option, choose between 1 and 9'
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
