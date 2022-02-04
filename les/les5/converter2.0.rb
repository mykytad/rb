puts "какая у вас валюта на руках?
  __1-гривна
  __2-доллар"
valuta = gets.chomp
puts"сколько денег у тебя есть?"
your_valuta = gets.to_f
puts "какой у вас сейчас курс?"
valuta_price = gets.to_f
if 
  	valuta == "1"
  	uah = (your_valuta / valuta_price).round(2)
  	puts "у тебя " + uah.to_s + "$"
elsif 
	valuta == "2"
	usd = (your_valuta * valuta_price).round(2)
  	puts "у тебя " + usd.to_s + " грн"
else
  	puts "error"
end