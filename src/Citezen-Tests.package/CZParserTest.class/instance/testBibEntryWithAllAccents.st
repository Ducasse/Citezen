tests (todo)
testBibEntryWithAllAccents
	| bibset |
	bibset := self bibParserClass parse: '@article{Duca09a,
	title = "HeY!",
	author = {St\{''e}phane Ducasse and \aa \`{a}\''{e}\^{i} \"{o}\~{u}\={o}\.{o} \u{o}\v{o}\H{o}\t{oo}\c{c}\d{o}\b{o}},
	journal = foo,
	year = 2042
}'.
	self assert: bibset entries size equals: 1.
	self assert: bibset entries first type equals: #article.
	self assert: (bibset entries first at: #author) value equals: 'Ducasse, St\{''e}phane and \u{o}\v{o}\H{o}\t{oo}\c{c}\d{o}\b{o}, \aa \`{a}\''{e}\^{i} \"{o}\~{u}\={o}\.{o}'