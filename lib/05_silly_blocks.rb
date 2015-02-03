def reverser
	yield.to_s.split.map( &:reverse ).join(" ")
end

def adder(n=1)
	yield + n
end

# def repeater(repeats=0)
#   #if block_given?
# 	#repeats == 0 ? yield : repeats.times { yield }
#   #end
# end


def repeater(n = 1)
	n.times  { yield }
end
	# 	final+=n
	# 	return final
	# else
	# 	yield
	# end


	# 	n.times do yield
	# 	end
	# 	return n
	# end
