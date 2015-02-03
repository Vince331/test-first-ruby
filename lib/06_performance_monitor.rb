def measure(n = 1)
	start = Time.now
 	n.times { yield }
 	finish = Time.now
 	total_runtime = finish - start
 	total_runtime / n
end

