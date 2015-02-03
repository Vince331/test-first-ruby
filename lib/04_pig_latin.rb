def translate(string)
	ay = ["a","y"]
	ending = []
	phrase = string.split
	phrase.each do |x|


				inter = x.split("")
				adder = []
				final = []
				space = [" "]
				
			while true
				if inter[0] == "q" and inter[1] == "u"
					adder << inter.shift 
					adder << inter.shift
					final = inter + adder + ay
					break
					elsif inter[0] == "a" or inter[0] == "e" or inter[0] == "i" or inter[0] == "o" or inter[0] == "u" or inter[0] == "y"
					final = inter + adder + ay
					break
					else
					adder << inter.shift
				end
			end
			ending << final + space

	end
	ending.join.strip
end
