tests
testMacro
	| bibset |
	bibset := self bibParserClass
		parse:
			'
@string(foo = {bar})
'.
	self assert: (bibset macroAt: 'foo') rawValue equals: 'bar'.
	self assert: (bibset macroAt: 'foo') value equals: 'bar'.
	self assert: bibset entries isEmpty