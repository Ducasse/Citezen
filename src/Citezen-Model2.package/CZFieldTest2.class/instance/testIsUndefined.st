testsForInstances
testIsUndefined
	self deny: (entry at:#title) isUndefined.
	self assert: (CZUndefinedField new isUndefined). 