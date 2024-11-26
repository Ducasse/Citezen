visiting
visitEntry: anEntry
	
	self emitEntryHeader: anEntry.
	self visitEntryBody: anEntry.
	self emitEntryFooter: anEntry