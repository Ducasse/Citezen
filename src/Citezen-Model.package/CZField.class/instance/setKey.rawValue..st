initialize-release
setKey: aSymbol rawValue: valueFromParser
	key := aSymbol.
"	value := self valueClass with: valueFromParser. "
	value := ((valueFromParser isKindOf: Number) 
			ifTrue: [CZInteger] 
			ifFalse: [CZString]) 
		with: valueFromParser.
	value scope: self