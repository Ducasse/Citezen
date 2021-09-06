tests
testFullNameForSimpleName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar'.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author fullName equals: 'Oscar Nierstrasz'.
	