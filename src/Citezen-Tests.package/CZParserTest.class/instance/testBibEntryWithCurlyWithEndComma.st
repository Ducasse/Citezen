tests (todo)
testBibEntryWithCurlyWithEndComma

	self should: [ self bibParserClass parse: '@article{foobar,
	title = "HeY!",
	author = {Théodule du Cellier de Lagrange},
	journal = foo,
	year = 2042,
}'] raise: SmaCCParserError.
	