instance creation
key: aSymbol value: aValue
	^ self new
		setKey: aSymbol asLowercase asSymbol
		value: aValue