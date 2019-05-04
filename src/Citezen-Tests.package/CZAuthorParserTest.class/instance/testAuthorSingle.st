tests
testAuthorSingle
	| authorString authors |
	authorString := 'Oscar Nierstrasz'.
	authors := self parserClass parse: authorString.
	self assert: (authors at: 1) firstNames asArray equals: #('Oscar').
	self
		assert: (authors at: 1) lastNames asArray
		equals: #('Nierstrasz')