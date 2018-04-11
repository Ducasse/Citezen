displaying
displayFullNameOn: aStream
	self firstNames , self lastNames
		do: [:name | aStream nextPutAll: name]
		separatedBy: [aStream space]