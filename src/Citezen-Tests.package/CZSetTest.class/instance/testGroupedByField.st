testing
testGroupedByField
	| groups groupedItemCount |
	groups := bibset groupedBy: [:each | each type].
	groupedItemCount := groups inject: 0 into: [:sum :each | sum + each entries size].
	
	self assert: groupedItemCount = bibset entries size.
	self assert: (groups at: #article) entries size = 2.
	self assert: (groups at: #inproceedings) entries size = 1.
	self assert: (groups at: #misc) entries size = 1.