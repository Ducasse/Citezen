displaying
displayShortenedNameOn: aStream
	"Write the first letters of the first names and the full last name on the argument stream."
	self firstNames
		do:	[:firstName |
			aStream
				nextPut: firstName first;
				nextPut: $.;
				space].
	self lastNames
		do: [:lastName | aStream nextPutAll: lastName]
		separatedBy: [aStream space]