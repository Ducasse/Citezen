tests (todo)
testBibEntryWithAccents
	| bibset |
	bibset := self bibParserClass parse: '@article{Duca09a,
	title = "HeY!",
	author = {St\{''e}phane Ducasse and St\{`e}phane Du\c{c}o},
	journal = foo,
	year = 2042
}'.
	self assert: bibset entries size equals: 1.
	self assert: bibset entries first type equals: #article.
	self assert: (bibset entries first at: #author) value equals: 'Ducasse, St\{''e}phane and Du\c{c}o, St\{`e}phane'