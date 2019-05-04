tests
testSimpleValues
	| bibset entry |
	bibset := self bibParserClass
		parse:
			'
@sometype(somekey,
	num = 42,
	ref = 42foo,
	reftoo = foo42,
	justavalue = "42"
)
'.
	entry := bibset entryAt: 'somekey'.
	self assert: (entry at: 'num') rawValue isNumber.
	self assert: (entry at: 'ref') rawValue isSymbol.
	self assert: (entry at: 'reftoo') rawValue isSymbol.
	self assert: (entry at: 'justavalue') rawValue isNumber not.
	self assert: (entry at: 'justavalue') rawValue isSymbol not