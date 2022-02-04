puts "введите числа"
a = gets.to_i
b = gets.to_i
if 
	a > b 
	puts "число 'a' больше " + a.to_s	
elsif 	
	b > a 
	puts "число 'b' больше " + b.to_s
else
	b == a 
	puts "числа равные"
end
c = (a + b) / 2 # вывод среднего из числа 
puts c 	
z = 12
y = z % 2
if 
	y == 0
	puts "число четное"
else
	puts "число не четное"
end