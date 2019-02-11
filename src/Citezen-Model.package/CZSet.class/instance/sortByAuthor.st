arranging - combining
sortByAuthor
	"Change the receiver such that the entities are sorted by author"
	
	self sortBy: [:x :y | x author rawValue <= y author rawValue]