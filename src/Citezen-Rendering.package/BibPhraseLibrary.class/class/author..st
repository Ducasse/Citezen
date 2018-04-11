formats-fields
author: aField
	| authors andSep |
	authors := (CZAuthorParser parse: aField value) collect: [:each | BibLiteralPhrase text: each fullName].
	andSep := authors size > 2 ifTrue: [', and '] ifFalse: [' and '].
	^ (BibSequencePhrase with: authors)
		separatorText: ', ';
		lastSeparatorText: andSep;
		yourself