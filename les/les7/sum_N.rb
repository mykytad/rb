
numbers = []
puts 'Введите N'
user_input = gets.to_i
index = 1 
summa = 0
while index < user_input.to_i do
	numbers << index 
	summa += index 
	index += 1
end
puts numbers
puts numbers.sum