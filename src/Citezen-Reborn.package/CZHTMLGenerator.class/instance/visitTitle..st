visiting
visitTitle: aCZTitleElement
	"this is not the same title: here this is the still the legacy from CZDocument of adrian"
	
	outputStream 
		nextPutAll: '<h4>'; 
		nextPutAll: (self treatString: aCZTitleElement title);
		nextPutAll: '</h4>'.
	self line ; line. 