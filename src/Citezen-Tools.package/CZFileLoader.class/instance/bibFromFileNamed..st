loading
bibFromFileNamed: aString
	bibset := CZBibParser parse: (aString asFileReference readStream contents)