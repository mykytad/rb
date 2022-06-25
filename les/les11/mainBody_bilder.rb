require_relative "body_bilder"

body_bilder1 = Body_bilder.new
body_bilder2 = Body_bilder.new
body_bilder3 = Body_bilder.new

10.times do 
	body_bilder1.pump("nogi")
end
10.times do 
	body_bilder1.pump("ruki")
end
9.times do 
	body_bilder1.pump("grudak")
end

9.times do 
	body_bilder2.pump("nogi")
end
9.times do 
	body_bilder2.pump("ruki")
end
8.times do 
	body_bilder2.pump("grudak")
end

5.times do 
	body_bilder3.pump("nogi")
end
5.times do 
	body_bilder3.pump("ruki")
end
5.times do 
	body_bilder3.pump("grudak")
end

puts "Первый бодибилдер:"
body_bilder1.show_muscul
puts ""
puts "Первый бодибилдер:"
body_bilder2.show_muscul
puts ""
puts "Первый бодибилдер:"
body_bilder3.show_muscul