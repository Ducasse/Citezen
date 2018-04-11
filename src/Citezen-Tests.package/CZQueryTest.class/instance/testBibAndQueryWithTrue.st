tests
testBibAndQueryWithTrue
	"self debug: #testBibAndQueryWithTrue"
	
	| query query1 query2 collection index |
	query1 := CZTrueQuery new.
	query2 := CZFieldQuery named: #year checks: [ :each | each < 2006 ]..
	query := query1 AND: query2.
	self assert: bibset entries size = 5.
	collection := bibset entries select: [ :each | query value: each ].
	self assert: (collection size = 4).
	
	