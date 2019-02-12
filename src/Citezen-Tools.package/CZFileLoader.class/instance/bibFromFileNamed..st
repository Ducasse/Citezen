loading
bibFromFileNamed: aString

	aString asFileReference 
		readStreamDo: [ :s | 
			bibset := CZBibParser parse: s contents ]