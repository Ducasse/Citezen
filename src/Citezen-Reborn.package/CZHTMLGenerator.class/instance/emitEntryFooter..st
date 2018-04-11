entries
emitEntryFooter: anEntry

	super emitEntryFooter: anEntry.
	self outputStream nextPutAll: '</li>'.
	self line.