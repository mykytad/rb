car = ["audi", "nisan", "BMW", "marsedes", "mini", "lada", "linkoln", "porshe"]

puts "У нас всего " + car.size.to_s + " машин. Вам какую?"

choice = gets.to_i - 1

if 
	choice >= 0 && choice < car.size	
	puts "Вы получили, " + car[choice] + "!!!"
else
	puts "Извините, машины с таким номером у нас нет :("
end



