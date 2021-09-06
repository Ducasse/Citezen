displaying
displayFullNameOn: aStream
	self firstNames , self particles,  self lastNames
		do: [:name | aStream nextPutAll: name]
		separatedBy: [aStream space]