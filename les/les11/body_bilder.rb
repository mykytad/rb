class Body_bilder
	def initialize
		@nogi = 0
		@ruki = 0
		@grudak = 0
	end

	def pump (muscul)
		case muscul
		when "nogi"
			@nogi += 1
		when "ruki"
			@ruki += 1
		when "grudak"
			@grudak += 1
		end
	end

	def show_muscul
		puts "ноги #{@nogi}"
		puts "руки #{@ruki}"
		puts "грудак #{@grudak}"
	end

end