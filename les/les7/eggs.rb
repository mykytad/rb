eggs = [0, 0, 0, 1, 2, 3, 0, 0, 23, 0, 4, 5, 12, 2, 345, 0,]
good_eggs = []
broken = 0
 for item in eggs do 

 	if (item != 0)
 		broken += 1
 	else
 		good_eggs << item
 	end

 end 
 puts broken
 puts good_eggs.to_s