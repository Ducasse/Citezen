tests
testShortenedNameForMultipleFirstName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar Arthur'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author shortenedName equals: 'O. A. Nierstrasz'.
	