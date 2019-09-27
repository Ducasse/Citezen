tests
testFullNameForComposedName
	| authorString authors author |
	authorString := 'van der Papen, Wilfried'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author fullName equals: 'Wilfried van der Papen'.
