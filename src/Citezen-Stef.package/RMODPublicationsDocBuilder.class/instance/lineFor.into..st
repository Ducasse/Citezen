building
lineFor: selector into: aStream
	| dict |
	dict := (workingBibSet select: (CZQuery perform: selector)) groupedBy: CZQuery year.
	workingBibSet := workingBibSet reject: (CZQuery perform: selector).
	"so that we do not count twice the top conferences that are tagged internationalconference"
	aStream
		nextPutAll: selector asString;
		space.
	2012 to: 2016 do: [ :each | 
		aStream nextPutAll: '& '.
		aStream nextPutAll: (dict at: each ifAbsent: [ Set new ]) size printString ]