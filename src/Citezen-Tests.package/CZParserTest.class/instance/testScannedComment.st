tests
testScannedComment
	| bibset |
	bibset := CZBibParser parse: '
% junk stuff
'.
	self assert: bibset macros isEmpty.
	self assert: bibset entries isEmpty