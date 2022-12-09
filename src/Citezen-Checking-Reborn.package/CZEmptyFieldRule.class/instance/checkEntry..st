interface
checkEntry: anEntry

	anEntry fields do: [ :field | (field value = '')
		ifTrue: [ self logField: field of: anEntry ]]