tests
testKey
	self assert: entry key equals: #testUnpublished.
	entry key: #test.
	self assert: entry key equals: #test