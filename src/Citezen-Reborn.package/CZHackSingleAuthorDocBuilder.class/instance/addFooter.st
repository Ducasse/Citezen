building
addFooter
	"ugly conditional but this is my code :)"

	noHeader ifTrue: [^self].
	doc footer:
			(CZFooter new
				text:
					(xhtml
						ifTrue: [ self xhtmlFooter ]
						ifFalse: [ self latexFooter ]))