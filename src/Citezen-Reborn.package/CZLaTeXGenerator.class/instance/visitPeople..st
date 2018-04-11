visiting
visitPeople: aCZPeople

	aCZPeople perform:  expandOption.
	self outputStream nextPutAll:  aCZPeople notExpanded "so that we are sure that we get \'' for é"