tests
testBibTypeQuery
	| query collection index |
	query := CZTypeQuery checks: [ :each | each = #article].
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 3).
	
	index := 0.
	bibset entries do: [ :each | (each type = #article) ifTrue: 
		[ index := index + 1. 
		  self assert: ((collection at: index) = each) ]]