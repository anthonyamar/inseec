def multiples
	total = 0
	(0..1000).each do |n|
		if n % 3 == 0 || n % 5 == 0
			puts n
			total += n 
		end
	end
	puts '=================='
	p total
end

multiples
