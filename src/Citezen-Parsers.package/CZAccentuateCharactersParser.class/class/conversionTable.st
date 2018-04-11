as yet unclassified
conversionTable
	^ (conversionTable isNil) 
		ifTrue: [conversionTable := self toHtmlTable]
		ifFalse: [conversionTable]