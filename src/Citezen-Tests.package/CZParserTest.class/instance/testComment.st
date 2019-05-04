tests
testComment
	| bibset |
	bibset := self bibParserClass
		parse:
			'
@comment( junk )
'.
	self assert: bibset macros isEmpty.
	self assert: bibset entries isEmpty