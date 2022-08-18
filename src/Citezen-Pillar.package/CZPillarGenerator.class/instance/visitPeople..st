visit
visitPeople: aCZPeople

	aCZPeople perform: expandOption.
	self outputStream nextPutAll: (self treatString: aCZPeople shortenedName)