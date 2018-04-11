generated-reduction actions
reduceActionForDatabaseDeclaration1: nodes 
	^ self
		addDatabase: (nodes at: 3) value;
		addDatabases: ((nodes at: 4) collect: [:each | each second])