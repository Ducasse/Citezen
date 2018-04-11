accessing-convenience
addBlockWithField: aFieldName 
	self add: ((BibFieldRef field: aFieldName) blockNamed: aFieldName)