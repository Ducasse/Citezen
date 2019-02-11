arranging - combining
sortByKey
	"Change the receiver such that the entities are sorted by key"
	
	self sortBy: [:x :y | x key <= y key]