visit
visitEntryBody: anEntry

	| fields |
	fields := anEntry fieldSortedFollowingKeys: fieldOrder.
	self flag: #bug. "here we should do a diff to get the extras fields and keep them at the end.
	Right now we simply ignore them and lose a lot of information"
	fields 
		do: [ :each | each acceptVisitor: self ] 
		separatedBy: [ self emitFieldSeparation ]
