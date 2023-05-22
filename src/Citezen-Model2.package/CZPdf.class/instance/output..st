adding-removing methods
output: aVisitor
	^ '<a href="', self dispatchVisitor: aVisitor, '">PDF</a>'