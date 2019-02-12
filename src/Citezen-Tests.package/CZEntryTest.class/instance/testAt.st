tests
testAt
	self assert: (entry at:#pages) class equals: CZField.
	self assert: (entry at:#absent) class equals: CZUndefinedField.
	self assert: (entry at:#absent ifAbsent:'a pas') equals: 'a pas'.
	