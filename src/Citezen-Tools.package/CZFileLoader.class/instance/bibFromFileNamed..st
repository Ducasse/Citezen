loading
bibFromFileNamed: aString
	self flag: #ENH. "this method could be move to CZBibParser"
	aString asFileReference 
		readStreamDo: [ :s | 
			bibset := CZBibParser parse: s contents ]