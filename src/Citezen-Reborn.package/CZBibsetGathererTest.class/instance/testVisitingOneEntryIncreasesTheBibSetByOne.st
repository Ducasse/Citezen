tests
testVisitingOneEntryIncreasesTheBibSetByOne
	"self debug: #testVisitingOneEntryIncreasesTheBibSetByOne"
	
	| visitor |
	visitor := CZBibsetGatherer new.
	self assert: visitor bibset size isZero.	
	visitor visit: entry.
	self assert: visitor bibset size equals: 1.			
	