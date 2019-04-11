visit
visitEntryBody: anEntry
	| fields |
	fields := self determineFieldsOf: anEntry.
	fields
		do: [ :each | each acceptVisitor: self ]
		separatedBy: [ self emitFieldSeparation ]