tests
testBibKeyQuery
	| query collection |
	query := CZKeyQuery checks: [ :each | each = #a1].
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 1).
	
	(collection at:1) key = #a1