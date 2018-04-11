accessing
lookupMacroAt: aKey ifAbsent: aBlock
	"Look up the scope chain for the value of macro named aKey."
	^ scope isNil
		ifTrue: [aBlock value]
		ifFalse: [scope lookupMacroAt: aKey ifAbsent: aBlock]