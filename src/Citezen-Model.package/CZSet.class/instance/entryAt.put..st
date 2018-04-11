accessing
entryAt: aSymbol put: anEntry
	| index |
	index := entries findFirst: [:each | each key = aSymbol].
	^ index = 0
		ifTrue: [entries add: anEntry]
		ifFalse: [entries at: index put: anEntry]