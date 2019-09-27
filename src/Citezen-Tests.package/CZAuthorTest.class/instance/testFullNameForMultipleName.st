tests
testFullNameForMultipleName
	| authorString authors author |
	authorString := ' Hernandes Morales, Carla '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author fullName equals: 'Carla Hernandes Morales'.
