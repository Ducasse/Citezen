tests
testMacro
	| bibset |
	bibset := CZBibParser parse: '
@string(foo = {bar})
'.
	self assert: (bibset macroAt: 'foo') rawValue = 'bar'.
	self assert: (bibset macroAt: 'foo') value = 'bar'.
	self assert: bibset entries isEmpty