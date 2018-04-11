printing
fullName
	| ret |
	
	(self people size = 0) ifTrue: [ ^ ''].
	(self people size = 1) ifTrue: [ ^ self people first fullName ].
	
	ret := WriteStream on: String new.
	
	1 to: (self people size - 2) do: [ :cpt |
		ret nextPutAll: (self people at: cpt) fullName.
		ret nextPutAll: ', ' ].
	ret 
		nextPutAll: (self people at: (self people size - 1)) fullName;
		nextPutAll: ' and ';
		nextPutAll: (self people last) fullName.
		
	ret close.
	^ ret contents