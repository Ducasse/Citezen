accessing
at: aSymbol ifAbsent: aBlock
	| index |
	index := fields findFirst: [:each | each key = aSymbol].
	^ index = 0
		ifTrue: [aBlock value]
		ifFalse: [fields at: index]