accessing
entryAt: aSymbol ifAbsent: aBlock
	| index |
	index := entries findFirst: [:each | each key = aSymbol].
	^ index = 0
		ifTrue: [aBlock value]
		ifFalse: [entries at: index]