class Temperature

attr_accessor :temperature

	 def initialize(hash={})
	 @temperature = hash
	 end

	def in_celsius
		if @temperature.keys == [:c]
			return temperature[:c]
		else
		 ((@temperature[:f] - 32) * 5/9)
		end
	end

	def in_fahrenheit  
		if @temperature.keys == [:f]
			return temperature[:f]
		else
		 @temperature[:c] * 9.0 / 5 + 32
		end
	end


	def self.from_celsius(temp=0)
		new(:c => temp)
	end

	def self.from_fahrenheit(temp=0)  
		new(:f => temp)
	end

end


 class Celsius < Temperature

 	def initialize(temp)
 		@temperature = temp
		

 	end

 	def in_celsius
 		return @temperature
 	end

 	

 end



p t = Temperature.new(f: 50)
p t.in_fahrenheit
p t.in_celsius

h = Celsius.new 50
p h.in_celsius
