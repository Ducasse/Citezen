tests
testAsBibKeyForMultipleName
	| authorString authors author |
	authorString := ' Hern{\a}ndes Morales, Carla '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author asBibKey equals: 'hernandesmorales'.
