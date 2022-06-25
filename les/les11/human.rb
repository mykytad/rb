class	Human
	#
	def initialize(first_name, middle_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@age = age
		@film = nil
	end

	def old?
		return @age <= 60
	end

	def full_name
		if old?
			return "#{@first_name} #{@middle_name}"
		else
			return @first_name
		end
	end

	def age
		return @age	
	end

	def film=(film)
		@film = film
	end

	def film
		return @film
	end
	#
end