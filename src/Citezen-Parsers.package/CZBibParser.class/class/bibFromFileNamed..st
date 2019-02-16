importing
bibFromFileNamed: aString
	
	aString asFileReference 
		readStreamDo: [ :s | 
			^ CZBibParser parse: s contents ]