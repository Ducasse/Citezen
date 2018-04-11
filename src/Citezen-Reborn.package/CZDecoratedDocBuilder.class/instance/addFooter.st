building
addFooter

	noHeader ifTrue: [^self].
	doc footer: (CZFooter new text: self footerString)
					