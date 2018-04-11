tests
testBibAndQuery
	| query query1 query2 collection index |
	query1 := CZFieldQuery named: #year checks: [ :each | each > 2004 ].
	query2 := CZFieldQuery named: #year checks: [ :each | each < 2006 ].
	query := query1 AND: query2.
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 2).
	
	index := 0.
	bibset entries do: [ :each | ((each at: #year ifAbsent: 2006) value = 2005) ifTrue: 
		[ index := index + 1. 
		  self assert: ((collection at: index) = each) ]]