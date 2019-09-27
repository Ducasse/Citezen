tests
testAsBibKeyForComposedAuthor
	| authorString authors author |
	authorString := 'van der Papen, Wilfried'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author asBibKey equals: 'papen'.
	