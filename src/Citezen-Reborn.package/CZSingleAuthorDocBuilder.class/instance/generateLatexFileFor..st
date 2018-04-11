utils
generateLatexFileFor: aDoc

	| visitor | 
	visitor := CZLaTeXGenerator new.
	fieldOrder ifNotNil: [visitor fieldOrder: fieldOrder].
	visitor outputStream: (FileStream newFileNamed:  Date today yyyymmdd, '-Full.tex').
	visitor visit: aDoc
	