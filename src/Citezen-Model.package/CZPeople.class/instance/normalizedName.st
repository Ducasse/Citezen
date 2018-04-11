printing
normalizedName
	| ret |
	
	(self people size = 0) ifTrue: [ ^ ''].
	(self people size = 1) ifTrue: [ ^ self people first normalizedName ].
	
	ret := WriteStream on: String new.
	
	self people
		do: [ :each | ret nextPutAll: each normalizedName ]
		separatedBy: [ ret nextPutAll: ' and ' ].
		
	ret close.
	^ ret contents