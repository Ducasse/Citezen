test
testkeysThatAreInButNotIn
	"self debug: #testkeysThatAreInButNotIn"
	
	| dup res |
	dup := CZDuplicateIdentifier new.
	res := dup keysThatAreIn:  self entriesThatShouldTakePrecedence butNotIn: self entriesWithInternalKeyBasedDuplicates.
	self assert: res size equals: 1.
	self assert: (res includes: #Denk08d).
	
	res := dup 
				keysThatAreIn: self entriesWithInternalKeyBasedDuplicates
			 	butNotIn: self entriesThatShouldTakePrecedence.
	self assert: res size equals: 2.
	self assert: (res includes: #Duca10a).
	self assert: (res includes: #Abde08a).
	
	
