instance creation
named: aCollection firstNames: firstNamesCollection junior: junior
	^ (self new)
		dispatchVonLast: aCollection;
		firstNames: firstNamesCollection;
		junior: junior;
		yourself