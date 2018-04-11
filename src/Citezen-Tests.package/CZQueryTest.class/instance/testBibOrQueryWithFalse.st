tests
testBibOrQueryWithFalse
	"self debug: #testBibOrQueryWithFalse"
	
	| query query1 query2 collection index |
	query1 := CZFalseQuery new.
	query2 := CZFieldQuery named: #year checks: [ :each | each < 2005 ].
	query := query1 OR: query2.
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 2).
	
	