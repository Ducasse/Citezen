tests (todo)
testWithDoubleQuotedA
	| bibset |
	bibset := self bibParserClass parse: '@article{Duca09a,
	title = "HeY!",
	author = {M{\"a}lardalen University},
	journal = foo,
	year = 2042
}'.
	self assert: (bibset entries first at: #author) value equals: 'University, M{\"a}lardalen'.
	

	bibset := self bibParserClass parse: '@article{Duca09a,
	title = "HeY!",
	author = {M{"a}lardalen University},
	journal = foo,
	year = 2042
}'.
	self assert: (bibset entries first at: #author) value equals: 'University, M{"a}lardalen'