displaying
displayNormalizedNameOn: aStream
	self particles, self lastNames
		do: [:each | aStream nextPutAll: each ]
		separatedBy: [ aStream space ].
	self firstNames ifNotEmpty: [aStream nextPutAll: ', '].
	self firstNames
		do: [:each | aStream nextPutAll: each ]
		separatedBy: [ aStream space ].
