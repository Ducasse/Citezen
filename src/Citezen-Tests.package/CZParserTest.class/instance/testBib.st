tests (todo)
testBib
	| bibset |
	bibset := self bibParserClass parse: '@article{key, year=42}'.
	self assert: bibset macros size equals: 0.
	self assert: bibset entries size equals: 1