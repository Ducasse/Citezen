formats-fields
month: aField
	^ BibLiteralPhrase text: (self monthMappings at: aField value ifAbsent: aField value).