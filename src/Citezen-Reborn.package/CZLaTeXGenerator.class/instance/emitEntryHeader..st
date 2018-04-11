configuration
emitEntryHeader: anEntry
	"Add to the outputStream a header for the correponding anEntry if needed."
	
	outputStream nextPutAll: '
	\pub '.