tests (todo)
testBib
	| bibset |
	bibset := CZBibParser parse: '@article{key, year=42}'.
	self assert: bibset macros size = 0.
	self assert: bibset entries size = 1