visiting
visitString: aCZString

	"aCZString scope key = #abstract ifTrue: [ self halt ]."
	aCZString fixCRs.
	self outputStream 
		nextPut: ${;
		nextPutAll: aCZString notExpanded; 
		nextPut: $}