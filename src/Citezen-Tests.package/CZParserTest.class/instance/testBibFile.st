tests (todo)
testBibFile
	| bibset |
	bibset := self bibParserClass parse: self class bibFile.
	self assert: bibset entries size equals: 2