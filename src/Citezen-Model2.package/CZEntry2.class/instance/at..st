accessing
at: aSymbol
	^ self at: aSymbol ifAbsent: [CZField undefined: aSymbol]