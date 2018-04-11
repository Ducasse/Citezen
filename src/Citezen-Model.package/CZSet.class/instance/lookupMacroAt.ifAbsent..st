accessing
lookupMacroAt: aSymbol ifAbsent: aBlock
	"Return the local value of macro named aSymbol, or look it up."
	^ self macroAt: aSymbol ifAbsent:
		[super lookupMacroAt: aSymbol ifAbsent: aBlock]