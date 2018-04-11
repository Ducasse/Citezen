tests
testKey
	self assert: (entry key = #testUnpublished).
	entry key: #test.
	self assert: (entry key = #test)