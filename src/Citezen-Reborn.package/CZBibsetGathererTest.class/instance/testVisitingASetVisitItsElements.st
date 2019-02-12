tests
testVisitingASetVisitItsElements
	"self debug: #testVisitingASetVisitItsElements"
	
	| visitor |
	visitor := CZBibsetGatherer new.
	self deny: visitor hasEntries.	
	visitor visit: bibset.
	visitor visit: entry.
	visitor visit: entry2.
	self assert: visitor numberOfEntries equals: 3.			
	