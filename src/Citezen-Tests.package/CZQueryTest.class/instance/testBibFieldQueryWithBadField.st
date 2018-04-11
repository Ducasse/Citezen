tests
testBibFieldQueryWithBadField
	| query collection |
	query := CZFieldQuery named: #yar checks: [ :each | each = 2005].
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 0).