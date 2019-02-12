tests
testType
	self assert: entry type equals: #unpublished.
	entry type: #test.
	self assert: entry type equals: #test