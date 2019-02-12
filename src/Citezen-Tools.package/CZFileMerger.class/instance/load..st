action
load: inputFile
	
	inputFile asFileReference readStreamDo: [ :s | 
		bibset addAll:  (CZBibParser parse: s contents) ]
	