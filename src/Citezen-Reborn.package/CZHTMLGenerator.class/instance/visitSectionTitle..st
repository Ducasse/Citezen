visiting
visitSectionTitle: aCZString
	outputStream
		nextPutAll: '<h4>';
		nextPutAll: 	(self treatString: aCZString expanded);
		nextPutAll: '</h4>'.
	self
		line;
		line