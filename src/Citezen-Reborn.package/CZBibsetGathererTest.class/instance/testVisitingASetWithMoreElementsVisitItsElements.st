tests
testVisitingASetWithMoreElementsVisitItsElements
	"self debug: #testVisitingASetWithMoreElementsVisitItsElements"
	
	| visitor |
	visitor := CZBibsetGatherer new.
	self deny: visitor hasEntries.	
	bibset addEntry: entry; addEntry: entry2.
	self assert: bibset size equals: 3.
	visitor visit: bibset.
	self assert: visitor numberOfEntries equals: 3.			
	