tests
testnormalizedName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar Arthur '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author normalizedName equals: 'Nierstrasz, Oscar Arthur'.