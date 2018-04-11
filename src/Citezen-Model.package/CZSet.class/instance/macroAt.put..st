accessing
macroAt: aSymbol put: aCZField
	| index |
	index := macros findFirst: [:each | each key = aSymbol].
	^ index = 0
		ifTrue: [macros add: aCZField]
		ifFalse: [macros at: index put: aCZField]