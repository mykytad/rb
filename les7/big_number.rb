puts "Введите количество чисел в массиве"
user_input = gets.to_i
index = 0
num_mas = [] #пустой масив 
while index < user_input do #заполняем масив
	num_mas << rand(100)#произвольные числа до 100
	index += 1
end
max_number = 0 # максимальное число
puts num_mas.to_s
for item in num_mas do
	if item > max_number # провека максимального 
		max_number = item # замена числа
	end
end
puts 'Самое большое число:'
puts max_number.to_s