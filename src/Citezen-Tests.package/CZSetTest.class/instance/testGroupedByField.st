testing
testGroupedByField
	| groups groupedItemCount |
	groups := bibset groupedBy: [:each | each type].
	groupedItemCount := groups inject: 0 into: [:sum :each | sum + each entries size].
	
	self assert: groupedItemCount equals: bibset entries size.
	self assert: (groups at: #article) entries size equals: 2.
	self assert: (groups at: #inproceedings) entries size equals: 1.
	self assert: (groups at: #misc) entries size equals: 1.