printing
shortenedName

	(self people size = 0) ifTrue: [ ^ ''].
	(self people size = 1) ifTrue: [ ^ self people first shortenedName ].
	
	^ String streamContents: [ :str |  	
		1 to: (self people size - 2) do: [ :cpt |
			str nextPutAll: (self people at: cpt) shortenedName.
			str nextPutAll: ', ' ].
		str 
			nextPutAll: (self people at: (self people size - 1)) shortenedName;
			nextPutAll: ' and ';
			nextPutAll: self people last shortenedName.
	]