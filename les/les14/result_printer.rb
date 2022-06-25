class ResultPrinter


  def initialize
    @status_imege = []
    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7 do 
        file_name = current_path + "/image/#{counter}.txt"

        if  File.exist?(file_name)
          f = File.new(file_name, "r:UTF-8")
          @status_imege << f.read
          f.close
          #puts @status_imege[errors]
        else
          @status_imege << "\n[картинки нет ]\n"
        end

        counter += 1
    end

  end

  def print_viselitsa(errors)
    # Оператор case, аналогичен набору if с несколькими ветвями elsif, подробнее
    # как он работает можно посмотреть, например, тут:
    #
    # https://www.tutorialspoint.com/ruby/ruby_if_else.htm
    puts @status_imege[errors]
  end

	def print_status(game)
		cls
		puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
		puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"
		print_viselitsa(game.errors)
		   if game.status == -1
      puts
      puts 'Вы проиграли :('
      puts 'Загаданное слово было: ' + game.letters.join('')
      puts
    elsif game.status == 1
      puts
      puts 'Поздравляем, вы выиграли!'
      puts
    else
      puts 'У вас осталось ошибок: ' + (7 - game.errors).to_s
    end
	end

	def get_word_for_print(letters, good_letters)
		result = ""
		for item in letters do
			if good_letters.include?(item)
				result += item + " "
			else
				result += "__ "	
			end
		end
		return result
	end
	def cls
		system "clear" or system "cls"
	end


end