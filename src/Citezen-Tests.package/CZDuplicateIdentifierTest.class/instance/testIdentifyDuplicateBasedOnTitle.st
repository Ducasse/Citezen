test
testIdentifyDuplicateBasedOnTitle
	"self debug: #testIdentifyDuplicateBasedOnTitle"
	
	| dup newBibset |
	dup := CZDuplicateIdentifier new.
	newBibset := (dup withoutInternalTitleDuplicates: self entriesWithInternalDuplicatesBasedOnTitle).
	self assert: (newBibset size = 3).
	self assert: dup keyBasedDuplicates size = 2.