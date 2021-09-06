tests
testFullNameForMultipleFirstName
	| authorString authors author |
	authorString := ' Nierstrasz, Oscar Arthur '.
	authors := self parserClass parse: authorString.
	author := authors first.
	self assert: author fullName equals: 'Oscar Arthur Nierstrasz'.
