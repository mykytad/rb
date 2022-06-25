require_relative "film"
require_relative "../les11/human"

persona1 = Human.new("Сергей", "Витальевич", 43)
persona2 = Human.new("Марина", "Энн", 28)
persona3 = Human.new("Мадонна", "Луиза", 58)

persona1.film = Film.new("\"Челюсти\"", "Спилберг")
persona2.film = Film.new("\"Список Шиндлера\"", "Спилберг")
persona3.film = Film.new("\"Парк Юрского период\"", "Спилберг")

puts persona1.full_name
puts "его фильм " + persona1.film.title
sleep 0.5
puts persona2.full_name
puts "его фильм " + persona2.film.title
sleep 0.5
puts persona3.full_name
puts "его фильм " + persona3.film.title