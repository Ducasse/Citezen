tests
testBibFieldMatchQuery
	| query collection index |
	query := CZFieldQuery named: #author checks: [ :each | '*toto*' match: each ].
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 2).
	
	index := 0.
	bibset entries do: [ :each | ('*toto*' match: (each at: #author) rawValue) ifTrue: 
		[ index := index + 1. 
		  self assert: ((collection at: index) = each) ]]