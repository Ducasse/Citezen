testing
testSortedBy
	bibset sortByDateReverse.
	bibset entries overlappingPairsDo: [:x :y | self assert: (x year) value >= (y year) value].
	self assert: bibset entries last key equals: #meuh