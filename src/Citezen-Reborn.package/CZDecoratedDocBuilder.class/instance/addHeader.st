building
addHeader
	
	noHeader ifTrue: [^self].
	doc header: (CZHeader new text: self headerString)