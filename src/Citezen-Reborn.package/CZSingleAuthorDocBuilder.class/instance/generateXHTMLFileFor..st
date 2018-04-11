utils
generateXHTMLFileFor: aDoc
	| visitor |
	visitor := CZHTMLGenerator new.
	fieldOrder ifNotNil: [ visitor fieldOrder: fieldOrder ].
	visitor
		outputStream: (FileStream newFileNamed: Date today yyyymmdd , '-Full.html');
		visit: aDoc