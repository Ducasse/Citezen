test
testIdentifyDuplicate
	"self debug: #testIdentifyDuplicate"
	
	| dup newBibset |
	dup := CZDuplicateIdentifier new.
	newBibset := dup withoutInternalKeyDuplicates: self entriesWithInternalKeyBasedDuplicates.
	self assert: newBibset size equals: 3.
	self assert: dup keyBasedDuplicates size = 2.