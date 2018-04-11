tests
testBibNotQuery
	| query collection index |
	query := CZTypeQuery checks: [ :each | each = #article].
	query := query NOT.
	
	collection := bibset entries select: [ :each | query value: each ].
	
	self assert: (collection size = 2).
	
	index := 0.
	bibset entries do: [ :each | (each type ~= #article) ifTrue: 
		[ index := index + 1. 
		  self assert: ((collection at: index) = each) ]]