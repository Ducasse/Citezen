testsForInstances
testValue
	self assert: (entry at:#author) value class equals: ByteString.
	self assert: (entry at:#author) rawValue class equals: ByteString.
	
	self assert: (entry at:#title) value class equals: ByteString.
	self assert: (entry at:#title) value class equals: (entry at:#title) rawValue class.
	
	self assert: (entry at:#year) value class equals: SmallInteger.
	self assert: (entry at:#title) value class equals: (entry at:#title) rawValue class.
	
	self assert: (entry at:#undefined) value equals: ''