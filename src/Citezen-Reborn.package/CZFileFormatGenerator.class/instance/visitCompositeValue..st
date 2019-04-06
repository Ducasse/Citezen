visit
visitCompositeValue: aCZCompositeValue

	aCZCompositeValue 
		do: [ :each | each acceptVisitor: self] 
		separatedBy: [ self outputStream nextPutAll: ' ' ]