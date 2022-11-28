conversion
convertFieldsOf: aCZEntry to: aSpecializedCZEntry 
	aCZEntry fields do: [ :each | 
		aSpecializedCZEntry perform: (each key, ':') asSymbol with: each]