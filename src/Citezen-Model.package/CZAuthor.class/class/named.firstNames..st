instance creation
named: aCollection firstNames: firstNamesCollection
	^ (self new)
		dispatchVonLast: aCollection;
		firstNames: firstNamesCollection;
		yourself