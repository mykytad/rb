game = ["камень", "ножници", "бумага"]
puts " сделай свой выбор
1-камень
2-ножници
3-бумага"
choice = gets.to_i - 1
pc_choice = rand(3)
#puts pc_choice
if choice == pc_choice
	puts "ничья"
elsif choice == 0 && pc_choice == 1
	puts "вы победили!!!"
elsif choice == 1 && pc_choice == 2
	puts "вы победили!!!"
elsif choice == 2 && pc_choice == 0
	puts "вы победили!!!"
else
	puts "победили ПК!!!"	
end
