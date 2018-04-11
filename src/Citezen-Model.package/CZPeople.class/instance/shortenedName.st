printing
shortenedName

	"why not using doseparatedby:?"
	| ret |
	
	(self people size = 0) ifTrue: [ ^ ''].
	(self people size = 1) ifTrue: [ ^ self people first shortenedName ].
	
	ret := WriteStream on: String new.
	
	1 to: (self people size - 2) do: [ :cpt |
		ret nextPutAll: (self people at: cpt) shortenedName.
		ret nextPutAll: ', ' ].
	ret 
		nextPutAll: (self people at: (self people size - 1)) shortenedName;
		nextPutAll: ' and ';
		nextPutAll: (self people last) shortenedName.
		
	ret close.
	^ ret contents