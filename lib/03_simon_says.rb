
def echo(string)
return string
end

def shout(string)
	return string.upcase
end

def repeat(string,num=2)
	final = ""
	i = 0
	while i < num
		final = final + " " + string
		i = i + 1
	end
	return final.strip
end

	def start_of_word(word,distance)
		total = ""
		i = 0
		word.each_char do |e|
			if i < distance
				total = total + e
				i+=1
			end
		end
		return total
	end

def first_word(words)
	final = ""
	words.each_char do |i|
		if i == " "
			break 
		else
			final = final + i
		end
	end
	return final
end

def titleize(title)
	title.capitalize!
	final = []
	final = title.split(" ")
	inter = []
	i = 0
	while i <= final.length
		if final[i] == "and" or final[i] == "over" or final[i] == "the"
		inter = inter + final[i].split
		else
		inter = inter + final[i].to_s.capitalize.split
		end
		i+=1
	end
	inter = inter.join(" ")
	return inter
end







