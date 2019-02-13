visit
visitEntryBody: anEntry

	| fields |
	fields := anEntry fieldsSortedAccordingTo: fieldOrder.
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ]
