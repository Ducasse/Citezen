accessing
macroAt: aSymbol
	"Return the local macro definition, if known."
	^ self macroAt: aSymbol ifAbsent: [Error signal.]