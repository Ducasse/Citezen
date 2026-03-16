visiting
visitPeople: aCZPeople

	self outputStream nextPut: ${.
	aCZPeople perform: expandOption.
	outputStream nextPutAll: aCZPeople notExpanded.
	self outputStream nextPut: $}.