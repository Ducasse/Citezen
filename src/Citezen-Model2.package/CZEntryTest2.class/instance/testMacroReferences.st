tests
testMacroReferences
	self assert: entry macroReferences size equals: 1.
	entry at: #macro put:#MACRO.
	self assert: entry macroReferences size equals: 2