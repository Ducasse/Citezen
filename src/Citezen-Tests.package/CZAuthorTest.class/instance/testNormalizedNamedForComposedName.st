tests
testNormalizedNamedForComposedName
	| authorString authors author |
	authorString := 'van der Papen, Wilfried'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author normalizedName equals: 'van der Papen, Wilfried'.