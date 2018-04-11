visiting
visitPeople: aCZPeople
	"self halt: aCZPeople printString."
	aCZPeople perform: expandOption.
	outputStream nextPutAll: (self treatString: aCZPeople expanded)