visiting
visitString: aCZString

	aCZString scope key = #abstract ifTrue: [ self halt ].
	self outputStream 
		nextPut: ${;
		nextPutAll: aCZString notExpanded; 
		nextPut: $}