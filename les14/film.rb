film_list = "data/film_fist2.txt"
if File.exist?(film_list)
	film = File.new(film_list, "r:UTF-8")
	lines = film.readlines
	film.close
	number = rand(lines.length)

  # Определим, чётное ли число получилось, проверив его остаток от деления на два
  	if number % 2 == 1
	    # Если число нечётное, уменьшим его на 1
	    number -= 1
  	end	
  	puts "Сегодня Вам предлагается к просмотру фильм:\n"
	puts lines[number]
  	puts lines[number + 1]
else
	puts "Файл не найден"
end