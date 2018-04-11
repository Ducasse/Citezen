tests
testAt
	self assert: ((entry at:#pages) class = CZField).
	self assert: ((entry at:#absent) class = CZUndefinedField).
	self assert: (entry at:#absent ifAbsent:'a pas' = 'a pas').
	