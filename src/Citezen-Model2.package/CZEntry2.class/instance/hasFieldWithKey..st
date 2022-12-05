accessing
hasFieldWithKey: aSymbol
	^ fields anySatisfy: [:each | each key = aSymbol]