visiting
visitSectionTitle: aCZString

	self outputStream 
		nextPutAll: '\section{';
		nextPutAll: aCZString notExpanded;
		nextPut: $}.
	self line