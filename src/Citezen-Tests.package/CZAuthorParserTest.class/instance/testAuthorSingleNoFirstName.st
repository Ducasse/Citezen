tests
testAuthorSingleNoFirstName
	| authorString authors |
	authorString := ' Nierstrasz'.
	authors := self parserClass parse: authorString.
	self
		assert: (authors at: 1) lastNames asArray
		equals: #('Nierstrasz')