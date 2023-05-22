accessing
hasField: aSymbol
	^ fields anySatisfy: [:each | each key = aSymbol]