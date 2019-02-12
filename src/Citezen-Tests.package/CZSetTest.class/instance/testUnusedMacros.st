testing
testUnusedMacros
	self assert: bibset macros size equals: 2.

	bibset dropUnusedMacros.
	self assert: bibset macros size equals: 1.
	self shouldnt: [bibset macroAt: #used] raise: Error.
	self should: [bibset macroAt: #unused] raise: Error