building
addHeader
	
	noHeader ifTrue: [^self].
	doc header:
			(CZHeader new
				text:
					(xhtml
						ifTrue: [ self xhtmlHeader ]
						ifFalse: [ self latexHeader ]))