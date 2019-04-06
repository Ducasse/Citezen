visit
visitEntryBody: anEntry

	| fields |
	self halt.
	fields := anEntry fieldsSortedAccordingTo: fieldOrder.
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ]
