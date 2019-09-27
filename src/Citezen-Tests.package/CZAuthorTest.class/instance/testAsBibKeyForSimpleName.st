tests
testAsBibKeyForSimpleName
	| authorString authors author |
	authorString := ' Hern{\a}ndes, Carla '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author asBibKey equals: 'hernandes'.
