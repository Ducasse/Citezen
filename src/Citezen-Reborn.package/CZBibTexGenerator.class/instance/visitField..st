visiting
visitField: aField

	"aField key = #abstract ifTrue: [ self halt ]."
	self outputStream 
		nextPutAll: '  ';
		nextPutAll: aField key;
		nextPutAll: ' = '.
	aField dispatchVisitor: self.