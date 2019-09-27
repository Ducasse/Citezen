tests
testNormalizedNameForMultipleName
	| authorString authors author |
	authorString := ' Hernandes Morales, Carla '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author normalizedName equals: 'Hernandes Morales, Carla'.
