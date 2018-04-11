visiting
visitSectionTitle: aCZString
	outputStream
		nextPutAll: '<h4';
		nextPutAll: '>';
		nextPutAll:
			(self treatString: aCZString expanded);
		nextPutAll: '</h4';
		nextPutAll: '>'.
	self
		line;
		line