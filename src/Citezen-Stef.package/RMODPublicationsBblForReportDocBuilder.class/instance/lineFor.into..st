building
lineFor: selector into: aStream
	| dict |
	dict := (workingBibSet select: (CZQuery perform: selector)) groupedBy: CZQuery year.
	workingBibSet := workingBibSet reject: (CZQuery perform: selector).
	"so that we do not count twice the top conferences that are tagged internationalconference"
	
	(selector piecesCutWhere:[ :a :b | b isUppercase ])
		do: [ :each | 
	aStream
		nextPutAll: each uncapitalized;
		space].
	2017 to: 2021 do: [ :each | 
		| numberPerYear |
		numberPerYear := (dict at: each ifAbsent: [ Set new ]) size.
		perKind := perKind + numberPerYear.
		aStream nextPutAll: '& '.
		aStream nextPutAll: numberPerYear printString.
		 ]