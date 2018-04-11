tests
testBibAndQueryWithFalse
	"self debug: #testBibAndQueryWithFalse"
	
	| query query1 query2 collection index |
	query1 := CZFalseQuery new.
	query2 := CZFieldQuery named: #year checks: [ :each | self halt. ].
	query := query1 AND: query2.
	self assert: bibset entries size = 5.
	collection := bibset entries select: [ :each | query value: each ].
	self assert: (collection size = 0).
	
	self shouldnt: [ bibset entries select: [ :each | query value: each ]] raise: Halt.