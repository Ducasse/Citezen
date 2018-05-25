visit
visitEntryBody: anEntry
	| fields |
	fields := anEntry fieldSortedFollowingKeys: fieldOrder.
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ].
