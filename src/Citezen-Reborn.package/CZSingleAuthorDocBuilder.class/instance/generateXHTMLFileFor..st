utils
generateXHTMLFileFor: aDoc
	| visitor |
	visitor := CZHTMLGenerator new.
	fieldOrder ifNotNil: [ visitor fieldOrder: fieldOrder ].
	visitor
		outputStream: "(FileStream newFileNamed: Date today yyyymmdd , '-Full.html');"
							(File named: (Date today yyyymmdd, '-Full.html')) writeStream;
		visit: aDoc