visit
visitString: aCZString
	aCZString fixCRs.
	self outputStream 
		nextPutAll: (self treatString: aCZString notExpanded)