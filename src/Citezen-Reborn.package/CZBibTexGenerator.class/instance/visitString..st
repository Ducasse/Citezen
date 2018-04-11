visiting
visitString: aCZString
	self outputStream 
		nextPut: ${;
		nextPutAll: aCZString notExpanded; 
		nextPut: $}