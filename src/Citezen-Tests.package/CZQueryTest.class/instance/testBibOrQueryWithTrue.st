tests
testBibOrQueryWithTrue
	"self debug: #testBibOrQueryWithTrue"
	
	| query query1 query2 collection index |
	query1 := CZTrueQuery new.
	query2 := CZFieldQuery named: #year checks: [ :each | self halt. ].
	query := query1 OR: query2.
	self assert: (bibset entries size = 5).
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 5).
	self shouldnt: [bibset entries select: [ :each | query value: each ]] raise: Halt. 
	
	