
require_relative 'film'

puts 'Фильмы какого режиссера вы хотите посмотреть?'
director_name = gets.chomp

# Объявляем пустой массив, куда будем добавлять фильмы
films = []

while films.size < 3
  puts 'Какой-нибудь его хороший фильм?'
  film_name = gets.chomp
  films << film_name
end

# Берем случайный элемент из массива films и вызываем у него методы title и
# director_name, чтобы вывести информацию на экран.
films = films.sample
puts "И сегодня вечером рекомендую посмотреть: #{films}"
puts "Режиссера: #{director_name}"