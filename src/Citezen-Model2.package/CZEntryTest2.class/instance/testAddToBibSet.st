tests
testAddToBibSet
	| bibset |
	
	bibset := CZSet new.
	bibset addEntry: entry.
	
	self assert: ((bibset entries at:1) == entry).
	self assert: (entry scope == bibset).
	