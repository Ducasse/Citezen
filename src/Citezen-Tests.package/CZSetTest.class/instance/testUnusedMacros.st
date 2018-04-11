testing
testUnusedMacros
	self assert: bibset macros size = 2.

	bibset dropUnusedMacros.
	self assert: bibset macros size = 1.
	self shouldnt: [bibset macroAt: #used] raise: Error.
	self should: [bibset macroAt: #unused] raise: Error