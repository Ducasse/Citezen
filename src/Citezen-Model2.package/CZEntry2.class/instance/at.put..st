accessing
at: aSymbol put: aValue 
	fields removeAllSuchThat: [:each | each key = aSymbol].
	fields add: ((CZField key: aSymbol rawValue: aValue)
				scope: self;
				yourself)