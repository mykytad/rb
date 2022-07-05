film_list = "data/film_list.txt"
if File.exist?(film_list)
	film = File.new(film_list, "r:UTF-8")
	line = film.readlines
	film.close
	
	puts "Сегодня Вам предлагается к просмотру фильм:\n"
	puts "\n" + line.sample	
else
	puts "Файл не найден"
end