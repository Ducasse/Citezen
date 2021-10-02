visiting
visitPeople: aCZPeople

	self outputStream nextPutAll: '\czauthors{'.
	self halt.
	aCZPeople perform: expandOption.
	outputStream nextPutAll: aCZPeople notExpanded.
	self outputStream nextPut: $}.