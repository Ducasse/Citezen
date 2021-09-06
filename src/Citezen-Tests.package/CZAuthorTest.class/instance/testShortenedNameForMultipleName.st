tests
testShortenedNameForMultipleName
	| authorString authors author |
	authorString := ' Hernandes Morales, Carla '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author shortenedName equals: 'C. Hernandes Morales'.
