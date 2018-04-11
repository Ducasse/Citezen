accessing
macroAt: aSymbol ifAbsent: aBlock
	| index |
	index := macros findFirst: [:each | each key = aSymbol].
	^ index = 0
		ifTrue: [aBlock value]
		ifFalse: [macros at: index]