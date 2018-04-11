instance creation
existingFieldNamed: aSymbol
	^ (CZEntryQuery checks: [ :entry | entry hasField: aSymbol ])