visiting
visitPeople: aCZPeople

	self outputStream nextPutAll: '\czauthors{'.
	aCZPeople perform: expandOption.
	outputStream nextPutAll: aCZPeople notExpanded.
	self outputStream nextPut: $}.