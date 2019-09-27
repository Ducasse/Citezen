tests
testNormalizedNamedForSimpleName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author normalizedName equals: 'Nierstrasz, Oscar'.