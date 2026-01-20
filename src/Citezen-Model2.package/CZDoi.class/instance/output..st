adding-removing methods
output: aVisitor
	^ '<a href="https://doi.org/', self dispatchVisitor: aVisitor, '">DOI</a>'