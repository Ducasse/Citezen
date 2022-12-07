accessing
testComputeEntryKeys
	| checker entryKeys |
	checker := CZChecker2 new.
	entryKeys := checker computeEntryKeys: bibSet.
	self assert: (entryKeys keys size) equals: 2.
	self assert: (entryKeys at: #Duca10a) equals: 2.
	self assert: (entryKeys at: #Abde08a) equals: 1.