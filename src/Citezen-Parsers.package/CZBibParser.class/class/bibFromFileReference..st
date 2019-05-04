importing
bibFromFileReference: aFileReference
	
	aFileReference
		readStreamDo: [ :s | 
			^ CZBibParser parse: s contents ]