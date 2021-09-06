tests
testShortenedNameForComposedAuthor
	| authorString authors author |
	authorString := 'van der Papen, Wilfried'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author shortenedName equals: 'W. van der Papen'.
	