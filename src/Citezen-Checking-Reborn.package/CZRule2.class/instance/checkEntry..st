interface
checkEntry: anEntry

	anEntry do: [ :field | self checkField: field ]
	