conversion
convertFieldsOf: aCZEntry to: aSpecializedCZEntry 
	aCZEntry fields do: [ :each | 
		aSpecializedCZEntry perform: (each key, ':') asSymbol with: each]
	
"add the case where the field is not in the entry. 'return -field: nil-' in this case"