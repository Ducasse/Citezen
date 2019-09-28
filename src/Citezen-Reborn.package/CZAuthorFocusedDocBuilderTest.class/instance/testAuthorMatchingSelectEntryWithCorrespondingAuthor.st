tests
testAuthorMatchingSelectEntryWithCorrespondingAuthor
	"self debug: #testWithAuthor"
	
	| builder |
	builder := CZDocBuilder new 
					authorMatchingString: '*S*Ducasse*';
					bibset: bibset.
	self assert: builder workingBibSet size equals: 6.				
	self assert: (builder workingBibSet select: builder authorQuery) size equals: 5