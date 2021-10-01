visit
visitPeople: aCZPeople
	self halt.
	aCZPeople perform: expandOption.
	self outputStream nextPutAll: (self treatString: aCZPeople notExpanded)