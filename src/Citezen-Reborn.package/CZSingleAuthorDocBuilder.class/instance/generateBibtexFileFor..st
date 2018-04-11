utils
generateBibtexFileFor: aDoc

	| visitor | 
	visitor := CZBibTexGenerator new.
	fieldOrder ifNotNil: [visitor fieldOrder: fieldOrder].
	visitor outputStream: (FileStream newFileNamed: self bibtexFileName). 
	visitor visit: aDoc