def sklonenie (number, krokodil, krokodila, krokodilov)
	ostatok = number % 10
	if (number == nil || !number.is_a?(Numeric))
  		number = 0
	end
	if (ostatok == 1)
		return krokodil
	end
	if (ostatok >= 2 && ostatok <= 4)
		return krokodila		
	end
	if (ostatok >= 5 && ostatok <= 9 || ostatok ==0)
		return krokodilov		
	end
end
skolko = 1 #gets.chomp
puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} " +
  "#{sklonenie(skolko, "пошел", "пошли", "пошли")} купаться в море!"