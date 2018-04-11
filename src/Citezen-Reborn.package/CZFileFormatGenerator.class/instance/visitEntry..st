visit
visitEntry: anEntry
	| fields |
	fields := anEntry fieldSortedFollowingKeys: fieldOrder.
	self emitEntryHeader: anEntry.
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ].
	self emitEntryFooter: anEntry