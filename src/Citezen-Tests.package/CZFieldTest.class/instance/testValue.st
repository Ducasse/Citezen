testsForInstances
testValue
	self assert: (entry at:#author) value class = ByteString.
	self assert: (entry at:#author) rawValue class = ByteString.
	
	self assert: (entry at:#title) value class = ByteString.
	self assert: (entry at:#title) value class = (entry at:#title) rawValue class.
	
	self assert: (entry at:#year) value class = SmallInteger.
	self assert: (entry at:#title) value class = (entry at:#title) rawValue class.
	
	self assert: (entry at:#undefined) value = ''