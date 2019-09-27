tests
testShortenedNameForSimpleName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author shortenedName equals: 'O. Nierstrasz'.
	