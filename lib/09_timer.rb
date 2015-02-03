class Timer
	attr_accessor :seconds
	def initialize(seconds=0)
		@seconds = seconds
		
	end


	def time_string
		@div = @seconds/60
		@mod = @seconds%60
		@div2 = @div/60
		@mod2 = @div%60
		if @div < 600 and @div >= 60
			return "0#{@div2}:0#{@mod2}:#{@mod}"
		elsif @div < 60 and @div >= 1
			if @div > 9 and @mod > 9
			return "00:#{@div}:#{@mod}"
			elsif @div > 9 and @mod < 9
			return "00:#{@div}:0#{@mod}"
			elsif @div < 9 and @mod > 9
			return "00:0#{@div}:#{@mod}"
			else @div < 9 and @mod < 9
			return "00:0#{@div}:0#{@mod}"
			end
		elsif @div < 1 and @mod > 9
			return "00:00:#{@mod}"
		else
			return "00:00:0#{@mod}"
		end
	end

end

t = Timer.new 0
p t.time_string
t = Timer.new 12
p t.time_string

