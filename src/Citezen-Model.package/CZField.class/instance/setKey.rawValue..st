initialization
setKey: aSymbol rawValue: valueFromParser
	key := aSymbol.
	value := ((valueFromParser isKindOf: Number) 
			ifTrue: [CZInteger] 
			ifFalse: [CZString]) 
		with: valueFromParser.
	value scope: self