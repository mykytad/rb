name = []
user_input = nil

while user_input != ''do
	user_input = gets.chomp
	name << user_input
end

for item in name do 
	puts "С нами, " + item
	sleep 0.5

	if (item == "Alice")
		puts "Alice кто такая ??"
		
		break

	end

end

puts "вопрос один?"
puts "вопрос два?"
puts "вопрос три?"
