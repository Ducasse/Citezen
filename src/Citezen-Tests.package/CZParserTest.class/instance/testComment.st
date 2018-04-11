tests
testComment
	| bibset |
	bibset := CZBibParser parse: '
@comment( junk )
'.
	self assert: bibset macros isEmpty.
	self assert: bibset entries isEmpty