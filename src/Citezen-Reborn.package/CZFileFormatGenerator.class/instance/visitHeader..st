visit doc
visitHeader: aCZHeader
	
	aCZHeader isDefined
		ifTrue: [ self outputStream nextPutAll: aCZHeader text ]
		ifFalse: [ self outputStream nextPutAll: self defaultHeader ].
	self line