visit
visitEntry: anEntry

	| fields |
	fields := anEntry fieldsFilteredAndSortedAccordingTo: fieldOrder.
	self emitEntryHeader: anEntry.
	fields
		do: [ :each | each acceptVisitor: self ]
		separatedBy: [ self emitFieldSeparation ].
	self line.