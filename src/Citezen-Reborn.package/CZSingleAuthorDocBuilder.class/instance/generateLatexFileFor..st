utils
generateLatexFileFor: aDoc

	| visitor | 
	visitor := CZLaTeXGenerator new.
	fieldOrder ifNotNil: [visitor fieldOrder: fieldOrder].
	visitor outputStream: "(FileStream newFileNamed:  Date today yyyymmdd, '-Full.tex')" " (Date today yyyymmdd, '-Full.tex') asFileReference ensureCreateFile writeStream"
	(File named: (Date today yyyymmdd, '-Full.tex')) writeStream.
	visitor visit: aDoc
	