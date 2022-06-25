#def cls
# 	system('cls') || system('clear')
#end

def get_letters
	slovo = ARGV[0]
	if slovo == nil || slovo == ""
		abort "введите слово для игры"	
	end
	return slovo.split("")
end

def get_user_input
	letter = ""
	while letter == "" do 
		letter = STDIN.gets.chomp
	end
	return letter	
end

def check_result(user_input, letters, good_letters, bad_letters)
	if good_letters.include?(user_input) || bad_letters.include?(user_input)
		return 0 			
	end

	if letters.include?(user_input)||
		(user_input == "е" && letters.include?("ё")) ||
		(user_input == "ё" && letters.include?("е"))

	if user_input == "е"
		good_letters << "ё"
	end

	if user_input == "ё"
		good_letters << "е"
	end
		good_letters << user_input
			# угадано слово полностью
		if (letters - good_letters).empty?
			return 1
		else # угадано букву 
			return 0
		end
	else # не угадано букву	
		bad_letters << user_input
		return -1
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

def print_status(letters, good_letters, bad_letters, errors)
	puts "\nСлово: #{get_word_for_print(letters, good_letters)}"
	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

	if errors >= 7
		puts "Вы проиграли"
	else
	 	if good_letters.uniq.sort == letters.uniq.sort
	 		puts "Вы выиграли !!!\n\n"
	 	else
	 		puts "У вас осталось попыток:" + (7 - errors).to_s
	 	end	 	
	end
end