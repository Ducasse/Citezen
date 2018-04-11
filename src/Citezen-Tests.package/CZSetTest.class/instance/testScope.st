testing
testScope
	self should: [bibset macroAt: 'feb'] raise: Error.
	self assert: (bibset lookupMacroAt: 'feb') isUndefined.
	bibset scope: CZSet months.
	self should: [bibset macroAt: 'feb'] raise: Error.
	self shouldnt: [bibset lookupMacroAt: 'feb'] raise: Error.
	self assert: (bibset lookupMacroAt: 'feb') value 
				= (CZSet months macroAt: 'feb') value