accessing
lookupEntryAt: aSymbol
	"Return the entry named aSymbol, looking up the scope chain if necessary."
	^ self entryAt: aSymbol ifAbsent: [scope ifNotNil: [scope lookupEntryAt: aSymbol]]