visit
visitEntry: anEntry
	| fields |
	self emitEntryHeader: anEntry.
	self visitEntryBody: anEntry.
	self emitEntryFooter: anEntry