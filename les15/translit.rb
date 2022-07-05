# Подключаем библиотеку cyrillizer с помощью require
require 'cyrillizer'

Cyrillizer.language = "russian"

puts 'Введите фразу для транслитерации:'
string = gets.chomp
# Транслитерируем в английский методом to_lat (в латинские символы) и сохраняем
# результат в переменную string_lat
string_lat = string.to_lat
if string == string_lat
	# Если string_lat совпадает с исходной строкой string, значит, введенная фраза
 	# была на английском и выводим результат транслитерации в кирилицу.
  	# выводим результат работы метода to_lat
	puts string.to_cyr	
else
	# Иначе, вывоим транслитерированную эту фразу на английском
	puts string_lat	
end