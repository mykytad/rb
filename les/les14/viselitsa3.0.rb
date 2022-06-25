current_path = "./" + File.dirname(__FILE__)
require_relative 'game'
require_relative 'result_printer'
require_relative 'word_reader'

puts "Игра виселица. Версия 3. (с) rubyrush.ru\n\n"
sleep 1

#require_relative "game" 
#require_relative "result_printer" 
#require_relative "word_reader" 

printer = ResultPrinter.new
word_reader = WordReader.new
words_file_name = File.dirname(__FILE__) + "/data/word.txt"
#slovo = reader.read_from_file (current_path + "data/word.txt")

game = Game.new(word_reader.read_from_file(words_file_name))

while game.status == 0 do 
	printer.print_status(game)
	game.ask_next_letter	
end

printer.print_status(game) 