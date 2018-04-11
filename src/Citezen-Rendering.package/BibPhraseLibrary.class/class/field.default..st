phrases-partial
field: aSymbol default: aString
	^ BibAlternativePhrase
		rules: {[:e | e hasField: aSymbol] -> (BibFieldRef field: aSymbol)}
		default: (BibLiteralPhrase text: aString)