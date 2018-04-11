visit
visitBibSet: aSet	
	
	self outputStream nextPutAll: '<ol>'.
	self line.

	aSet entries do: [ :each | 
		each acceptVisitor: self.
		].
	outputStream nextPutAll: '</ol>'.
