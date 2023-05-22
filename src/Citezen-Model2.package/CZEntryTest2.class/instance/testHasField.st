tests
testHasField
	self assert: (entry hasField: #author).
	self assert: (entry hasField: #title).
	self assert: (entry hasField: #pages).
	self deny: (entry hasField: #anotherField).
	self deny: (entry hasField: '').