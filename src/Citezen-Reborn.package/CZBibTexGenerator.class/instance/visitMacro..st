visiting
visitMacro: aCZField
	self outputStream nextPutAll: '@string{'.
	self visitField: aCZField. 
	self outputStream nextPutAll: ' }'.
	self line