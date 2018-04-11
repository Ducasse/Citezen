tests
testMacroReferences
	self assert: (entry macroReferences size = 1).
	entry at: #macro put:#MACRO.
	self assert: (entry macroReferences size = 2)