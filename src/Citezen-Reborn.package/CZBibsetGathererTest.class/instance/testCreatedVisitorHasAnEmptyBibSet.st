tests
testCreatedVisitorHasAnEmptyBibSet
	"self debug: #testCreatedVisitorHasAnEmptyBibSet"
	
	| visitor |
	visitor := CZBibsetGatherer new.
	self assert: visitor bibset size isZero.	
	self deny: visitor hasEntries.
	