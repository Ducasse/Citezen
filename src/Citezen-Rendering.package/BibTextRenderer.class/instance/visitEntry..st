visitor-double dispatch
visitEntry: anEntry
	self beginEntry: anEntry.
	super visitEntry: anEntry.
	self endEntry: anEntry
