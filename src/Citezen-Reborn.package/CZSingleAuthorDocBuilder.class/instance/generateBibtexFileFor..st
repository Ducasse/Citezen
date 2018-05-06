utils
generateBibtexFileFor: aDoc

	| visitor | 
	visitor := CZBibTexGenerator new.
	fieldOrder ifNotNil: [visitor fieldOrder: fieldOrder].
	visitor outputStream: (File named: self bibtexFileName) writeStream. 
	visitor visit: aDoc