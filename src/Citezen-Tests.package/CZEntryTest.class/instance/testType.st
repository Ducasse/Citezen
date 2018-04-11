tests
testType
	self assert: (entry type = #unpublished).
	entry type: #test.
	self assert: (entry type = #test)