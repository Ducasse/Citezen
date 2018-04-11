visit
visitItem: anItem
	
	outputStream 
		nextPutAll: '- *'; 
		nextPutAll: anItem name;
		nextPutAll: '>';
		nextPutAll: anItem link;
		nextPutAll: '*'.
		self line.
