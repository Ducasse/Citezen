arranging - combining
sortByAuthor
	self sortBy: [:x :y | (x author) rawValue <= (y author) rawValue]