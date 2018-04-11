tests
testSize
	| entrySize |
	entrySize := 0.
	entry do: [:each | entrySize := entrySize+1].
	
	self assert: (entry size = entrySize).
	entry at:#nonRenseigne put:'maintenant, si'.
	self assert: (entry size = (entrySize+1))