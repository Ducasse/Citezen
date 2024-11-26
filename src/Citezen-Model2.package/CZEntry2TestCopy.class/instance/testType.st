tests
testType
	self assert: entry type equals: #article.
	entry type: #test.
	self assert: entry type equals: #test