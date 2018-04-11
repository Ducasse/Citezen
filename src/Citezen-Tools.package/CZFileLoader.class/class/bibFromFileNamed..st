instance creation
bibFromFileNamed: aString
	^ (CZBibParser parse: ((FileStream readOnlyFileNamed: aString) contents)).