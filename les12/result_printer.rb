class ResultPrinter


	def print_status(game)
		cls
		puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
		puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"
		print_viselitsa(game.errors)
		if game.errors >= 7
			puts "Вы проиграли"
		else
	 		if game.good_letters.uniq.sort == game.letters.uniq.sort
	 			puts "Вы выиграли !!!\n\n"
	 		else
	 			puts "У вас осталось попыток:" + (7 - game.errors).to_s
	 		end	 	
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

	def print_viselitsa(errors)
    # Оператор case, аналогичен набору if с несколькими ветвями elsif, подробнее
    # как он работает можно посмотреть, например, тут:
    #
    # https://www.tutorialspoint.com/ruby/ruby_if_else.htm
    case errors
    when 0
      puts '
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
    when 1
      puts '
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 2
      puts '
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 3
      puts '
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 4
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 5
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      '

    when 6
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    when 7
      puts '
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    end
  end


end