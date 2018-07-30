def name_arr(names)
	names.split(',').shuffle
end 

def name_arr_paired(names)
	name_arr(names).each_slice(2).to_a
end

def pairings(names)
	pairs = name_arr_paired(names)
	if names.length % 2 == 0 
		pairs
	else 
		pairs[-2].concat(pairs[-1]).flatten
		pairs.pop(1) 
	end
	pairs
end

