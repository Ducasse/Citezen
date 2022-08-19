test
testkeysThatAreInButNotIn2
	"self debug: #testkeysThatAreInButNotIn"
	
	| dup res |
	dup := CZDuplicateIdentifier new.
	res := dup 
				keysThatAreIn: self entriesWithInternalKeyBasedDuplicates
			 	butNotIn: self entriesThatShouldTakePrecedence.
	"#(Denk08b Denk08b Duca10a Abde08a Duca10a) and #(Denk08b Denk8d)"			
				
	self assert: res size equals: 3.
	self assert: (res includes: #Duca10a).
	self assert: (res includes: #Abde08a).
	
	
