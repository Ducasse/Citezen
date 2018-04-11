tests
testTwoEntriesOneAfterTheOneCollectThem
	"self debug: #testTwoEntriesOneAfterTheOneCollectThem"
	
	| visitor |
	visitor := CZBibsetGatherer new.
	self assert: visitor bibset size isZero.	
	visitor visit: entry.
	visitor visit: entry2.
	self assert: visitor bibset size = 2.			
	