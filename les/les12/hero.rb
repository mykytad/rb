hero = gets.chomp


case hero
when "batman"
	puts "Joker"
when "Шерлок Холмс"
	puts "Профессор Мориарти"
when "Буратино"
	puts "Карабас-Барабас"
else hero = nil || hero = ""
	puts "нудно было выбрать героя"
end