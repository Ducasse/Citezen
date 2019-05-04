tests
testScannedComment
	| bibset |
	bibset := self bibParserClass
		parse:
			'
% junk stuff
'.
	self assert: bibset macros isEmpty.
	self assert: bibset entries isEmpty