accessing
entryAt: aSymbol
	"Return the local entry definition, if known."
	^ self entryAt: aSymbol ifAbsent: [Error signal]